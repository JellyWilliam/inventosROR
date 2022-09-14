#! /bin/sh

# Wait for DB services
sh ./config/wait-for-services.sh

# Prepare DB (Migrate - If not? Create db & Migrate)
sh ./config/prepare-db.sh

# Pre-comple app assets
sh ./config/asset-pre-compile.sh

# Start Application
bundle exec puma -C config/puma.rb