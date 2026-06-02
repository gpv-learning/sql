
# 📘 SQL Learning Workspace — Reproducible Learning Environment

## 🎯 Overview
This project provides a **fully reproducible, portable SQL learning environment** built on top of:

- **DuckDB CLI** — a fast, lightweight analytical database  
- **Docker** — ensuring a consistent setup across all machines  
- A **clean, scalable project structure** designed for long‑term learning  

The workspace supports a progression from **beginner SQL** to **advanced analytics** and eventually **PostgreSQL‑level concepts**.

---

# 🧱 Project Structure

```
sql-workspace/
│
├── docker/                 # Docker environment (image + orchestration)
│   ├── Dockerfile
│   └── docker-compose.yml
│
├── data/                   # Persistent DuckDB database (volume)
│
├── scripts/
│   ├── init/               # SQL schema (tables, constraints…)
│   ├── seed/               # Sample data
│   └── utils/              # Reusable SQL helpers (views, functions)
│
├── projects/               # Learning projects by difficulty level
│   ├── level_1_basics/
│   ├── level_2_intermediate/
│   ├── level_3_advanced/
│   └── level_4_postgresql/
│
├── notebooks/              # SQL sandbox (experiments, drafts)
│
└── README.md               # Main documentation
```

---

# 🚀 Getting Started

From the `docker/` directory:

```
docker compose up
```

This launches an interactive DuckDB session with a persistent database stored in:

```
/data/database.duckdb
```

---

# 🧪 Initializing the Database

Inside DuckDB:

```
.read scripts/init/00_init_schema.sql
.read scripts/seed/01_seed_data.sql
```

---

# 📚 Learning Path

The workspace is organized into **four progressive levels**, each with its own mini‑project.

### 🟦 Level 1 — SQL Basics  
SELECT, WHERE, ORDER BY, simple JOINs  
→ Mini‑project: Library management  

### 🟩 Level 2 — Intermediate SQL  
GROUP BY, HAVING, CTEs, subqueries  
→ Mini‑project: Student grading system  

### 🟧 Level 3 — Advanced SQL  
Window functions, performance, modeling  
→ Mini‑project: E‑commerce analytics  

### 🟪 Level 4 — PostgreSQL  
JSONB, indexes, triggers, advanced types  
→ Mini‑project: API + PostgreSQL  

---

# 🧰 Scripts Overview

### `scripts/init/`  
Contains the **database schema**, written manually as part of the learning process.

### `scripts/seed/`  
Contains **sample datasets** used for exercises and testing.

### `scripts/utils/helpers.sql`  
A personal SQL toolbox containing:

- reusable functions  
- utility views  
- common query patterns  

---

# 📝 Notebooks

The `notebooks/` directory is a **sandbox for experimentation**:

- draft queries  
- exploratory analysis  
- pattern testing  
- SQL notes and experiments  

It is versioned, but intentionally **not kept perfectly clean**.  

