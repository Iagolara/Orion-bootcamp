import express from "express";
import pkg from "pg";

const { Pool } = pkg;

const app = express();
app.use(express.json());

// Configuração do banco (usando variáveis de ambiente do docker-compose)
const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
});

// Teste de conexão com o banco
pool.connect()
  .then(() => console.log("Conectado ao banco de dados!"))
  .catch(err => console.error("Erro ao conectar ao banco:", err.message));

// Rota simples
app.get("/", (req, res) => {
  res.send("API está rodando e conectada ao banco!");
});

// Rota para testar o banco
app.get("/usuarios", async (req, res) => {
  try {
    const result = await pool.query("SELECT NOW() as agora");
    res.json(result.rows);
  } catch (err) {
    console.error(err);
    res.status(500).send("Erro ao consultar o banco.");
  }
});

const PORT = process.env.API_PORT || 3000;
app.listen(PORT, () => console.log(`Servidor rodando na porta ${PORT}`));
