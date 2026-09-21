#!/usr/bin/env python3
"""Read one certified rho=8..11 finite-ring layer record."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rho", type=int, required=True)
    parser.add_argument("--multiplier", type=int)
    args = parser.parse_args()
    data = json.loads((ROOT / "certificates" / "layers_8_11.json").read_text())
    layers = [layer for layer in data["layers"] if layer["rho"] == args.rho]
    if not layers:
        raise SystemExit("certified layers are rho=8,9,10,11")
    layer = layers[0]
    if args.multiplier is None:
        summary = {key: value for key, value in layer.items() if key != "records"}
        print(json.dumps(summary, indent=2, sort_keys=True))
        return
    records = [row for row in layer["records"] if row["multiplier"] == args.multiplier]
    print(json.dumps({"rho": args.rho, "multiplier": args.multiplier, "records": records}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
