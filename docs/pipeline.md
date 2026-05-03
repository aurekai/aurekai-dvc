# DVC Pipeline

Stages are defined in dvc.yaml:
- doctor_deep
- manifest_verify
- model_memory_pack
- sae_audit
- semantic_cache_bench
- proof_bundle_export
- release_gate

Outputs are written to artifacts directory and tracked with DVC.
