var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/escala", function (req, res) {
    usuarioController.escala(req, res);
});

router.post("/exibir", function (req, res) {
    usuarioController.exibir(req, res);
});

router.post("/presenca", function (req, res) {
    usuarioController.presenca(req, res);
});

router.post("/analise1", function (req, res) {
    usuarioController.analise1(req, res);
});

router.post("/analise2", function (req, res) {
    usuarioController.analise2(req, res);
});

module.exports = router;