class Relacionamento {
    var teQuero = true
    var tudo = true
    var aparencia = true

    fun verificarEvidencias(output: String) {
        try {
            when (output) {
                "deixei de te amar", "não quero mais você" -> throw Exception("Chega de mentiras!")
                else -> {
                    if (teQuero && tudo) {
                        aparencia = !aparencia
                    }
                    println("Diz que é verdade, que tem saudade.")
                }
            }
        } catch (erro: Exception) {
            println(erro.message)
        }
    }
}

fun main() {
    val nossoRelacionamento = Relacionamento()

    nossoRelacionamento.verificarEvidencias("deixei de te amar")
    nossoRelacionamento.verificarEvidencias("não quero mais você")
}
