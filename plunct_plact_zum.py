class Nave:
    def __init__(self, nome, selado=False, registrado=False, carimbado=False, avaliado=False, rotulado=False):
        self.nome = nome
        self.selado = selado
        self.registrado = registrado
        self.carimbado = carimbado
        self.avaliado = avaliado
        self.rotulado = rotulado

    def verificar_decolagem(self):
        if all([self.selado, self.registrado, self.carimbado, self.avaliado, self.rotulado]):
            return f"{self.nome} pode partir sem problema algum."
        else:
            return f"{self.nome} não vai a lugar nenhum!"

plunct_plact_zum = Nave("Plunct Plact Zum")
