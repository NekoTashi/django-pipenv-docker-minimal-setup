Django Minimal Setup With Pipenv and Docker
===========================================

Getting Started
---------------
- `docker build -t minimal-setup .`
- `docker run -d -p 5000:5000 minimal-setup:latest`

Test
----
- `docker exec <container_id> pytest tests.py`
