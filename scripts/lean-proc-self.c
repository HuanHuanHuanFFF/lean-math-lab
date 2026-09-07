/* Work containers may expose procfs from an outer PID namespace.
 * Retry an unavailable /proc/<own pid>/exe via the real /proc/self/exe.
 * A colliding outer PID may report EACCES instead of ENOENT. The retry
 * reads this process's executable, never that outer process's executable.
 * Do not fabricate a path, change permissions, or intercept other processes.
 */
#define _GNU_SOURCE
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/syscall.h>
#include <unistd.h>

static int own_executable(const char *path) {
  char expected[64];
  snprintf(expected, sizeof(expected), "/proc/%ld/exe", (long)getpid());
  return strcmp(path, expected) == 0;
}

ssize_t readlink(const char *path, char *buf, size_t size) {
  ssize_t result = syscall(SYS_readlink, path, buf, size);
  if (result == -1 && (errno == ENOENT || errno == EACCES) && own_executable(path))
    return syscall(SYS_readlink, "/proc/self/exe", buf, size);
  return result;
}

ssize_t readlinkat(int dirfd, const char *path, char *buf, size_t size) {
  ssize_t result = syscall(SYS_readlinkat, dirfd, path, buf, size);
  if (result == -1 && (errno == ENOENT || errno == EACCES) && own_executable(path))
    return syscall(SYS_readlinkat, AT_FDCWD, "/proc/self/exe", buf, size);
  return result;
}
