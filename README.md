<p align="center">
  <img src="https://raw.githubusercontent.com/aurekai/aurekai/main/assets/aurekai-logo.svg" alt="Aurekai" width="520" />
</p>

# aurekai-dvc

Aurekai integration surface for DVC with reproducible artifact pipelines for model memory, manifests, SAE audits, semantic cache benchmarks, proof bundles, and release gates.

Status: active
Type: data-ml

## Overview

aurekai-dvc provides a complete dvc.yaml stage graph and executable scripts to produce verifiable artifact outputs in artifacts directory. It supports local script validation even when dvc is not installed.

## Core Template Set

- doctor-deep
- manifest-verify
- model-memory-pack
- sae-audit
- semantic-cache-bench
- proof-bundle-export
- release-gate

## Quick Start

python3 -m pip install -r requirements.txt
bash tests/validate-scripts.sh

If dvc is installed:

dvc repro

## Canonical References

- Platform: https://github.com/aurekai/aurekai
- Native runtime: https://github.com/aurekai/native-runtime
- Integration registry: https://github.com/aurekai/aurekai/blob/main/registry/integrations.json
- Ecosystem map: https://github.com/aurekai/aurekai/blob/main/ECOSYSTEM_NAMES.md
