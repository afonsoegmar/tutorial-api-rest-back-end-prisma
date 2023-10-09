import express from 'express';
import ProdutosRouter from './router/ProdutosRouter';


// Porta do servidor
const PORT = 4000;

// App Express
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended:true}));

// Endpoint raiz
app.get('/', (_req, res) => {
    res.send('Bem-vindo!');
});

app.use('/produtos', ProdutosRouter);
//app.use('/usuarios', UsuariosRouter);
// Inicia o sevidor
app.listen(PORT, () => {
    console.log(`Servidor rodando com sucesso em ${PORT}`);
});