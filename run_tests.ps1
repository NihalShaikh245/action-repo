Write-Host "=== Running Unit Tests ==="
python -m pytest tests/ -v

Write-Host "=== Running Integration Tests ==="
python -m pytest integration_tests/ -v

Write-Host "=== Running Load Test ==="
python load_test.py

Write-Host "=== Checking Code Quality ==="
flake8 app.py
black --check app.py

Write-Host "=== Security Scan ==="
bandit -r app.py
