# Complete Project Structure

## Backend
- app/
  - api/v1/endpoints/ (11 endpoint modules)
  - models/ (10 database models)
  - services/ (8 business logic services)
  - ai/ (LLM, agents, tools, ML models)
  - integrations/ (EDC, CTMS, Lab connectors)
  - azure/ (Cloud services)
  - utils/ (Utilities and helpers)
  - database/ (Session management, migrations)
  - tasks/ (Async tasks with Celery)

## Frontend
- src/
  - components/ (35+ React components)
  - hooks/ (Custom React hooks)
  - services/ (API clients)
  - store/ (State management with Zustand)
  - types/ (TypeScript types)
  - utils/ (Utilities)
  - pages/ (Page components)

## Documentation
- README.md
- ARCHITECTURE.md
- DEPLOYMENT.md
- API_DOCUMENTATION.md
- DATABASE_SCHEMA.md
- AI_AGENTS_GUIDE.md

## Configuration
- docker-compose.yml
- Makefile
- .env.example
- requirements.txt (Python)
- package.json (Node.js)
