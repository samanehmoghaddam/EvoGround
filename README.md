# EvoGround
EvoGround: Agentic, evidence-grounded adaptation for rapidly shifting language. Detect when to adapt via multi-signal drift sensing, select what to learn, and update models with PEFT/LoRA—backed by prequential evaluation, fairness gates, and event-aware analysis.

## 📁 Project Structure
~~~~
EvoGround/
│
├── src/
│   ├── agentic/                # Agentic AI implementations
│   │   ├── controller.py
│   │   ├── drift_detection.py
│   │   ├── grounding/
│   │   │   ├── policy_signals.py
│   │   │   ├── covid_metrics.py
│   │   │   └── discourse_shift.py
│   │   ├── data_selection.py
│   │   ├── adaptation_peft.py
│   │   └── memory_graph.py
│   │
│   ├── baseline/               # Traditional adaptive learning
│   │   ├── periodic_retrain.py
│   │   ├── sliding_window.py
│   │   ├── incremental_ft.py
│   │   └── no_grounding_ft.py
│   │
│   ├── models/
│   │   ├── loaders.py
│   │   ├── peft_utils.py
│   │   ├── heads.py
│   │   └── tokenizer_utils.py
│   │
│   ├── evaluation/
│   │   ├── metrics.py
│   │   ├── prequential_eval.py
│   │   ├── fairness.py
│   │   ├── temporal_eval.py
│   │   └── reporting.py
│   │
│   ├── data/
│   │   ├── preprocess.py
│   │   ├── split_timeline.py     # split by month for 20-month experiments
│   │   ├── label_alignment.py
│   │   └── topic_features.py
│   │
│   └── utils/
│       ├── logging.py
│       ├── config.py
│       ├── seed.py
│       └── time_utils.py
│
├── experiments/
│   ├── config/                # Hydra/YAML experiment configs
│   │   ├── base.yaml
│   │   ├── agentic.yaml
│   │   ├── baseline_periodic.yaml
│   │   ├── baseline_incremental.yaml
│   │   ├── ablation_no_grounding.yaml
│   │   └── thresholds.yaml
│   │
│   ├── scripts/
│   │   ├── run_agentic.py
│   │   ├── run_baseline_periodic.py
│   │   ├── run_baseline_incremental.py
│   │   ├── run_ablation_no_grounding.py
│   │   └── eval_all.py
│   │
│   ├── results/
│   │   ├── agentic/
│   │   ├── baseline/
│   │   ├── ablations/
│   │   └── plots/
│   │
│   └── notebooks/
│       ├── exploratory_analysis.ipynb
│       ├── drift_visualization.ipynb
│       ├── grounding_signals.ipynb
│       └── long_term_eval.ipynb
│
├── data/
│   ├── raw/                    # raw Twitter data (not uploaded to GitHub)
│   ├── processed/
│   ├── monthly_splits/
│   ├── policy_events.csv
│   ├── covid_metrics.csv
│   └── README.md
│
├── reports/
│   ├── figs/
│   ├── tables/
│   ├── logs/
│   └── experiment_summary.md
│
├── configs/
│   ├── environment.yml
│   ├── requirements.txt
│   └── Dockerfile
│
├── .gitignore
├── README.md
└── LICENSE

~~~~
## 📜 License

Distributed under the **MIT License**.  
See `LICENSE` for details.
