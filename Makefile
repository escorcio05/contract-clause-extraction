.PHONY: setup test

setup:
	python3 -m venv .venv
	.venv/bin/pip install google-genai pydantic rank-bm25 pandas tqdm pytest ruff typer python-dotenv
	@if [ ! -f .env ]; then cp .env.example .env; echo "✅ Ficheiro .env criado a partir do exemplo."; fi
	@echo "✅ Ambiente configurado com sucesso!"

test:
	.venv/bin/pytest tests/ -v