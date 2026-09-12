"""Recheck the NEW obligations only; old frozen proof chains are not replayed."""
from pathlib import Path
import argparse,sys
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))
from check_results import main
if __name__=='__main__':
 parser=argparse.ArgumentParser()
 parser.add_argument('--out',default=str(ROOT/'verification-runs/current'))
 args=parser.parse_args();main(Path(args.out))
