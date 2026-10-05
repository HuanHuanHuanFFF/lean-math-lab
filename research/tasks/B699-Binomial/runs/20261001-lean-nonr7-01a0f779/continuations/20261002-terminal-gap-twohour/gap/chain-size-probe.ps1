param([string]$OutputPath = '')
$ErrorActionPreference = 'Stop'
# Arithmetic sizing only. No primality test, witness generation, or Lean acceptance.
[long]$gapDenominator = 4095
[long]$gapStart = 10000000
$gapTargets = @([long]122568684, [long]2686000000000)
$gapResults = foreach ($gapTarget in $gapTargets) {
  [long]$gapValue = $gapStart
  [long]$gapPrevious = $gapValue
  [long]$gapSteps = 0
  $gapWatch = [Diagnostics.Stopwatch]::StartNew()
  while ($gapValue -lt $gapTarget) {
    $gapPrevious = $gapValue
    [long]$gapRemainder = 0
    [long]$gapJump = [Math]::DivRem($gapValue, $gapDenominator, [ref]$gapRemainder)
    if ($gapJump -le 0 -or $gapSteps -ge 1000000) { throw 'Probe guard rejected recurrence' }
    $gapValue += $gapJump
    $gapSteps++
  }
  $gapWatch.Stop()
  [pscustomobject]@{
    target = $gapTarget
    start = $gapStart
    denominator = $gapDenominator
    ideal_integer_steps = $gapSteps
    previous = $gapPrevious
    reached = $gapValue
    elapsed_seconds = $gapWatch.Elapsed.TotalSeconds
    status = 'arithmetic-sizing-only-no-primality-or-compiler-cost'
  }
}
$gapJson = $gapResults | ConvertTo-Json -Depth 3
if ($OutputPath) { [IO.File]::WriteAllText($OutputPath, $gapJson + [Environment]::NewLine) }
$gapJson
