<?php
class Comida {
    public $visto = false;
    public $comido = false;
    public $ouviu_falar = false;
}

class Pessoa {
    public $caviar;

    function __construct() {
        $this->caviar = new Comida();
    }

    function sabe_o_que_e() {
        if ($this->caviar->visto && $this->caviar->comido) {
            return "Eu já vi e comi caviar.";
        } elseif ($this->caviar->visto) {
            return "Eu já vi caviar, mas nunca comi.";
        } elseif ($this->caviar->comido) {
            return "Eu já comi caviar, mas nunca vi.";
        } elseif ($this->caviar->ouviu_falar) {
            return "Nunca vi, nem comi caviar, eu só ouço falar.";
        } else {
            return "Nunca ouvi falar de caviar.";
        }
    }
}

$eu = new Pessoa();
?>
