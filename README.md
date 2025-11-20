# EvoGround
EvoGround: Agentic, evidence-grounded adaptation for rapidly shifting language. Detect when to adapt via multi-signal drift sensing, select what to learn, and update models with PEFT/LoRA—backed by prequential evaluation, fairness gates, and event-aware analysis.

## 📁 Project Structure
~~~~
EvoGround/
│
├── src/
│   ├── agentic/
│   ├── baseline/
│   ├── models/
│   ├── evaluation/
│   ├── data/
│   └── utils/
│
├── experiments/
│   ├── config/
│   ├── scripts/
│   ├── results/
│   └── notebooks/
│
├── cluster/                    # HPC utilities
│   ├── trillium/
│   │   ├── job_train.slurm     # SLURM script for Trillium
│   │   ├── job_eval.slurm
│   │   └── README.md           # instructions + modules to load
│   ├── vector/
│   │   ├── job_train.slurm
│   │   ├── job_eval.slurm
│   │   └── README.md
│
├── envs/                       
│   ├── environment.yml         # conda environment for training
│   ├── environment_min.yml     # minimal environment
│   └── environment_eval.yml    # inference/evaluation env
│
├── containers/                 # For reproducibility, optional
│   ├── Dockerfile
│   ├── evoground.sif           # (not committed, ignored)
│   └── README.md               # how to build singularity image
│
├── data/
│   ├── raw/                    # large data -> ignored
│   ├── processed/
│   ├── monthly_splits/
│   ├── policy_events.csv
│   ├── covid_metrics.csv
│   └── README.md
│
├── reports/
│   ├── figs/
│   ├── tables/
│   └── experiment_summary.md
│
├── .gitignore
├── README.md
└── LICENSE


~~~~
## 📜 License

Distributed under the **MIT License**.  
See `LICENSE` for details.
