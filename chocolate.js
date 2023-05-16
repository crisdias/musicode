function me_liguei(bebida) {
    let quero;
    switch (bebida) {
        case "chá":
            quero = false;
            break;
        case "café":
            quero = false;
            break;
        case "coca-cola":
            quero = false;
            break;
        case "guaraná":
            quero = false;
            break;
        case "chocolate":
            quero = true;
            break;
        default:
            quero = false;
    }
    
    if (quero) {
        console.log("Me liguei no " + bebida + ", só quero " + bebida + ". Pra mim é " + bebida + " o que eu quero beber!");
    } else {
        console.log("Não quero " + bebida);
    }
}
