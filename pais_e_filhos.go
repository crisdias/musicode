package main

import "time"

type PaisEFilhos struct {
	houverAmanha bool
}

func (p PaisEFilhos) pararPraPensar() {
	time.Sleep(1)
}

func (p PaisEFilhos) amarAsPessoas() {
	if !p.houverAmanha {
		p.pararPraPensar()

		p.houverAmanha = false
	}
}

func main() {
	PaisEFilhos{houverAmanha: true}.amarAsPessoas()
}
