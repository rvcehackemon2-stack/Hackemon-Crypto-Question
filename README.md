# Team Rocket Internal Systems — Project MEWTWO

> *"Prepare for trouble… and make it double."*

Welcome to the Team Rocket internal build and operations repository.
This repo tracks logs, deployment builds, and configuration for **Project MEWTWO** —
our most ambitious Pokemon capture initiative to date.

## Repository Structure

```
rocket-ctf/
├── config/
│   ├── .env.example         ← environment template for new recruits
│   ├── docker-compose.yml   ← deployment stack
│   └── requirements.txt     ← Python dependencies
├── logs/
│   ├── operation_log.txt    ← daily operation logs
│   └── error.log            ← system errors
├── builds/
│   ├── deploy.sh            ← deployment script
│   └── Makefile             ← build targets
├── assets/
│   └── rocket_logo.txt      ← ASCII art
├── scripts/
│   └── deprecated/
│       └── old_config.sh    ← legacy script, ignore
└── docs/
    └── internal/
        └── notes.txt        ← architecture notes
```

## Status

All systems operational. Giovanni has approved Phase 2.

> **Recruit Note:** Our sysadmin encoded the deployment key before logging off.
> Something about it being "not quite readable" but "still the same, just shifted."
> Check the config files if you need access.
