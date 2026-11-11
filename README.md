# Todo List - Elixir & Phoenix LiveView 🚀

Projeto prático desenvolvido para demonstrar o ecossistema e produtividade do **Elixir** e **Phoenix LiveView**, construído com base em uma arquitetura incremental e metodologia corporativa de *Pair Programming*.

---

## 🛠️ Stack Tecnológica

- **Linguagem:** [Elixir](https://elixir-lang.org/) (executado sobre a BEAM / Erlang VM)
- **Framework Web:** [Phoenix Framework](https://www.phoenixframework.org/) (v1.7+)
- **Interface Reativa:** [Phoenix LiveView](https://hexdocs.pm/phoenix_live_view/) (estado reativo gerenciado no servidor sem necessidade de SPA/JS separado)
- **Banco de Dados & ORM:** [Ecto](https://hexdocs.pm/ecto/) com SQLite3 (`ecto_sqlite3`)
- **Estilização & Componentes:** [Tailwind CSS](https://tailwindcss.com/) + [DaisyUI](https://daisyui.com/)

---

## 🧱 Arquitetura Incremental

O desenvolvimento do projeto é estruturado em etapas claras e incrementais:

1. **Git & Setup Inicial (`feat: setup inicial do projeto com .gitignore`)**
   - Configuração do repositório Git e repositório remoto.
   - Arquivo `.gitignore` abrangente para Elixir, Phoenix, SQLite, Node e builds.
   - Definição do manifesto `mix.exs` com dependências completas (Phoenix, LiveView, Ecto SQLite3, DaisyUI).
   - Configuração de ambientes (`config/config.exs`, `dev.exs`, `test.exs`, `prod.exs`, `runtime.exs`).
   - Estrutura de controllers, layouts e componentes base (`CoreComponents`).

2. **Lógica em Memória (`feat: lógica em memória`)**
   - Implementação da reatividade do LiveView gerenciando o estado na memória do processo OTP/GenServer no servidor.
   - CRUD em memória para adição, conclusão e remoção de tarefas.

3. **Persistência com Ecto (`feat: persistência com ecto e sqlite`)**
   - Criação de Schemas e Migrations do Ecto.
   - Persistência das tarefas no banco local SQLite3.
   - Validações com Changesets.

---

## 🚀 Como Executar o Projeto Localmente

### Pré-requisitos
- Elixir (~> 1.14 ou superior) e Erlang/OTP
- Node.js (opcional, para gerenciamento de pacotes frontend do Tailwind/DaisyUI)

### Passos de Instalação e Execução

1. Instalar as dependências do Elixir:
   ```bash
   mix deps.get
   ```

2. Configurar o banco de dados e migrações:
   ```bash
   mix ecto.setup
   ```

3. Iniciar o servidor Phoenix:
   ```bash
   mix phx.server
   ```
   Ou dentro do console interativo IEx:
   ```bash
   iex -S mix phx.server
   ```

4. Acesse [`http://localhost:4000`](http://localhost:4000) no seu navegador.
