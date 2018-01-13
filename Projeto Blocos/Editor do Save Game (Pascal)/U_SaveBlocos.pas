program SaveBlocos;

uses crt;

type
	Lote = record
		tipo: byte;
		moradores: word;
	end;

var x, y, bytetmp: byte;
    arq: file of byte;
    Lotes: array[0..3, 0..3] of Lote;
	key: char;
    bsom, bfps: boolean;

function arquivoExiste(caminho: string): boolean;
var arquivo: file;
begin
	Assign(arquivo, caminho);
	{$I-}
	reset(arquivo);
	{$I+}
	if IOResult = 0 then
		Result := true
	else
		Result := false;
	close(arquivo);
end;

procedure lerArquivoDyn(ponto: qword; tipo: byte; var destino);
begin
	seek(arq, ponto);
	case tipo of
		0://byte
          blockRead(arq, destino, sizeof(byte));
		1://word
          blockRead(arq, destino, sizeof(word));
     end;
end;

procedure gravarArquivoDyn(ponto: qword; tipo: byte; var conteudo);
begin
	seek(arq, ponto);
	case tipo of
		0://byte
			blockWrite(arq, conteudo, sizeof(byte));
		1://word
			blockWrite(arq, conteudo, sizeof(word));
     end;
end;

procedure editar;
var x, y, tipo: byte;
    moradores: word;
begin
    clrscr;
    write('X: ');
    readln(x);
    write('Y: ');
    readln(y);
    write('tipo: ');
    readln(tipo);
    write('moradores: ');
    readln(moradores);
    Lotes[x, y].tipo := tipo;
    Lotes[x, y].moradores := moradores;  
	Assign(arq, 'Blocos.sav');
	reset(arq);
    gravarArquivoDyn(x * 3 + y * 12, 0, Lotes[x, y].tipo);
    gravarArquivoDyn(x * 3 + y * 12 + 1, 1, Lotes[x, y].moradores);
	close(arq);
end;

begin
	if not(arquivoExiste('Blocos.sav')) then
	begin
		writeln('Arquivo Blocos.sav nao encontrado.');
		readln();
		exit;
	end;
	writeln('Lendo arquivo Blocos.sav...');
	Assign(arq, 'Blocos.sav');
    reset(arq);

    {rewrite(arq);
	for y := 0 to 3 do
		for x := 0 to 3 do
        begin
            gravarArquivoDyn(x * 3 + y * 12, 0, Lotes[x, y].tipo);
            gravarArquivoDyn(x * 3 + y * 12 + 1, 1, Lotes[x, y].moradores);
        end;
    bytetmp := 2;
    gravarArquivoDyn(16 * 3, 0, bytetmp);}

	for y := 0 to 3 do
		for x := 0 to 3 do
        begin
            lerArquivoDyn(x * 3 + y * 12, 0, Lotes[x, y].tipo);
            lerArquivoDyn(x * 3 + y * 12 + 1, 1, Lotes[x, y].moradores);
        end;
    lerArquivoDyn(16 * 3, 0, bytetmp);
	close(arq);
    bsom := Boolean(bytetmp and 1);
    bfps := Boolean(bytetmp shr 1 and 1);
	repeat
	begin       
        clrscr;
		for y := 0 to 3 do
			for x := 0 to 3 do
              writeln('Lote[', x, ', ', y, '] - Tipo: ', Lotes[x, y].tipo, ' Moradores: ', Lotes[x, y].moradores);
        writeln('byte(48): ', bytetmp);
        writeln('Som: ', bsom);
        writeln('FPS: ', bfps);
		key := readKey();
        if key = #101 then
            editar;
	end;
	until key = #27;
end.
