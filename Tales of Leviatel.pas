Program Tales_Of_Leviatel ;   
                
Var posicao:array[1..8] of integer ;
    max_xp:array[1..5] of integer;
    cont:array[1..2] of integer;       //contar alguma coisa que só se possa repetir uma vez por exemplo dialogos
    percentagem,saida,batatas,x:integer;
    dinheiro,XP,loading,fala,quest:integer;
		ataque,ataque_oponente:integer;
    vida,vida_oponente,nivel,bonus_armadura:integer;
		dano_player,dano_oponente:integer;                                                                 
    cor,codigo,adm,dialogo_quest_1,arma,armadura:string;
    missao_1,combate:string;
    tecla:char;
                                      //  Menu_1 -->  VER OPÇÃO NOVO JOGO
Procedure menu_1_1;
Begin                                                  // MENU 1
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦     [X]  --> NOVO JOGO           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦     [ ]  --> CARREGAR JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao[1]:=2;
    #80: posicao[1]:=2;
  end;
  
End;
                                      //  Menu_1 -->  VER OPÇÃO CARREGAR JOGO

Procedure menu_1_2;
Begin
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦     [ ]  --> NOVO JOGO           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦     [X]  --> CARREGAR JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao[1]:=1;
    #80: posicao[1]:=1;
  end;
  
End;
                                      //  Menu_2 -->  VER OPÇÃO JOGAR
Procedure menu_2_jogar;
Begin                                                  // MENU 2
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [X]  --> JOGAR              ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> DEFENIÇÕES         ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> CRÉDITOS           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> SAIR DO JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  tecla:=readkey;
  case tecla of
    #72: posicao[2]:=4;
    #80: posicao[2]:=2;
  end;
  
End;
                                      //  Menu_2 -->  VER OPÇÃO INSTRUÇÕES
Procedure menu_2_def;
Begin
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> JOGAR              ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [X]  --> DEFENIÇÕES         ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> CRÉDITOS           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> SAIR DO JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  
  tecla:=readkey;
  case tecla of
    #72: posicao[2]:=1;
    #80: posicao[2]:=3;
    
  end;
  
End;
                                      //  Menu_2 -->  VER OPÇÃO CRÉDITOS

Procedure menu_2_cred;
Begin
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> JOGAR              ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> DEFENIÇÕES         ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [X]  --> CRÉDITOS           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> SAIR DO JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  
  tecla:=readkey;
  case tecla of
    #72: posicao[2]:=2;
    #80: posicao[2]:=4;
  end;
  
End;
                                      //  Menu_2 -->  VER OPÇÃO SAIR DO JOGO

Procedure menu_2_sair;
Begin
  Writeln('                                                                                     ');
  Writeln('                        ¦¯¯¯¯¯¯¯¯¯¯¦                               ¦¯¯¯¯¯¯¯¯¯¯¦      ');
  Writeln('                      ________________                           ________________    ');
  Writeln('                      ¦   ¦  ¦¦  _¦  ¯                           ¯   ¦   ¦  _¦  ¯    ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> JOGAR              ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> DEFENIÇÕES         ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [ ]  --> CRÉDITOS           ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦      [X]  --> SAIR DO JOGO       ¦- ¦¦  ¦¦       ');
  Writeln('                          ¦  ¦¦  ¦¦                                  ¦- ¦¦  ¦¦       ');
  Writeln('                         __________                                 ___________      ');
  Writeln('                       ¦¦¦¦¦¦¦¦¦¦¦¦¦¦                             ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦    ');
  Writeln('                                                                                     ');
  
  // [#72 seta cima]  [#80 seta baixo]  [#13 enter]
  
  // OP1 É AS POSIÇÃO DO [X]
  
  tecla:=readkey;
  case tecla of
    #72: posicao[2]:=3;
    #80: posicao[2]:=1;
  end;
  
End;

Procedure cor_texto_default;
Begin
  If(cor='PRETO')Then
    textcolor(10);
  If(cor='BRANCO')Then
    textcolor(0);
End;

Procedure posicoes_hotbar;
Begin
  gotoxy(24,2);
	Writeln('[',dinheiro,']');
	gotoxy(22,4);
	Writeln('[',XP,']/',max_xp[x]);
	gotoxy(24,6);
	Writeln('[',nivel,']');
End;

                                      // EXECUTAR AÇÃO DE VER OS CRÉDITOS
Procedure creditos;
Begin
  Writeln;
  Writeln;
  
  If(cor='PRETO')Then
    textcolor(11);
  If(cor='BRANCO')Then
    textcolor(0);
		  
  Writeln('                                                   Jogo feito por: [André Filipe Pereira Cerqueira]');
  Writeln('                                                                   [Nuno Isidoro Dos Santos Fernandes]');
  
  If(cor='PRETO')Then
    textcolor(3);
  If(cor='BRANCO')Then
    textcolor(0);  
    
  Writeln('UM AGRADECIMENTO ESPECIAL PARA:');
  Writeln;
  Writeln('[CARLOS] Sempre nos nossos corações');
  Writeln('[ANDRÉ SAMPAIO] Designer');
  Writeln('[BEATRIZ FERNANDES] Designer');
  Writeln('[RUI FARIA] O técnico dos gotoxy');
  Writeln;
  
  If(cor='PRETO')Then
    textcolor(11);
  If(cor='BRANCO')Then
    textcolor(0);  
    
  Writeln('                                                              Para entrar em contacto: ');
  
  If(cor='PRETO')Then
    textcolor(3);
  If(cor='BRANCO')Then
    textcolor(0);  
    
  Writeln;
  Writeln('                                                              EMAIL: andrecerq16@gmail.com ');
  Writeln('                                                                     nunoisidoro27091999@gmail.com ');
  Writeln;
  Writeln;
  Writeln('                                                              TELEMOVEL: --- --- --- ');
  Writeln('                                                                         --- --- --- ');
  Writeln;
  textcolor(12);
  Writeln('Clique em qualquer tecla para voltar ao menu.');  
  cor_texto_default;
  readkey;
End;
                                      // EXECUTAR AÇÃO DE VER AS DEFENIÇÕES

Procedure passar_de_nivel;
Begin
	If(xp>=max_xp[x])Then
	Begin
	  nivel:=nivel+1;
	  xp:=xp-max_xp[x];
	  x:=x+1;
	End;
End;

Procedure keles_vs_solon;
Begin 
  vida:=bonus_armadura+20;
  ataque_oponente:=4;
  vida_oponente:=15;
  
  Repeat  
		  Writeln('                                                                        ');
		  Writeln('                                                                           ');
		  Writeln('                                                                              ');
		  Writeln('      /------------------\              /------------------\                 ');
		  Writeln('      |    ,,,,,         |              |        .         |                     ');
		  Writeln('      |    |O_O|      /\ |              |      _/-\_       |                      ');
		  Writeln('      |  ___---___   / / |              |      (0_0)       |                        ');
		  Writeln('      | ( ( . . ) ) / /  |              |   ___wwwww___    |                        ');
		  Writeln('      |  |()   ( \(\ /   |              |  (    www    \   |                  ');
		  Writeln('      |   O--O--  O \    |              |  | |)__w__(| |   |                 ');
		  Writeln('      |   | |-| |        |              |  | ||__0__|| |   |                       ');
		  Writeln('      |   |_| |_|        |              |   U )     ( U    |                   ');
		  Writeln('      |  /__| |__\       |              |     |     |      |                      ');
		  Writeln('      |                  |              |    /_______\     |                      ');
		  Writeln('      \------------------/              \------------------/                    ');   
		  Writeln('      |  ATK             |              |  ATK             |                      ');   
		  Writeln('      |------------------|              |------------------|                    '); 
		  Writeln('      |  HP              |              |  HP              |                    ');     
		  Writeln('      \------------------/              \------------------/                   ');  
		  Writeln('                                                                                ');
		  
		  gotoxy(15,16);
		  Writeln('[',ataque,']');
		  gotoxy(49,16);
		  Writeln('[',ataque_oponente,']');
		  gotoxy(15,18);
		  Writeln('[',vida,']');
		  gotoxy(49,18);
		  Writeln('[',vida_oponente,']');
		  
		  delay (1000);
		  
		    vida := vida - ataque_oponente;
        vida_oponente := vida_oponente - ataque;
      
	    clrscr;
		  
  Until(vida<0) OR (vida_oponente<0);
  
  If(vida<0)Then
    combate:='perdeu';
    
  If(vida_oponente<0) and (vida>0)Then
    combate:='ganhou'; 
		 
End;

Procedure def_1;
Begin
		clrscr;
		Writeln;
		Writeln;
	  Writeln('             DEFENIÇÕES:');
	  Writeln;
	  Writeln;
	  Writeln('       COR DE FUNDO:                [X]');
	  Writeln;
	  Writeln('                                    [ ]');
	  Writeln;                                          
	  Writeln('       IDIOMA:  [PORTUGUÊS/PT]      [-]');
	  Writeln;
	  Writeln('       VOLTAR AO MENU               [ ]');
	  
		gotoxy(22,6);
		Writeln('[',cor,']');	
		gotoxy(8,8);            //POSIÇOES DA COR E DA FRASE (ENTRAR COMO ADMINISTRADOR)
		Writeln(adm);
	
	  tecla:=readkey;
	  case tecla of
	    #72: posicao[6]:=3;
	    #80: posicao[6]:=2;
	  end;
  
End;

Procedure def_2;
Begin 
		clrscr;
		Writeln;
		Writeln;
	  Writeln('             DEFENIÇÕES:');
	  Writeln;
	  Writeln;
	  Writeln('       COR DE FUNDO:                [ ]');
	  Writeln;
	  Writeln('                                    [X]');
	  Writeln;    
	  Writeln('       IDIOMA:  [PORTUGUÊS/PT]      [-]');
	  Writeln;
	  Writeln('       VOLTAR AO MENU               [ ]');
	  
		gotoxy(22,6);
		Writeln('[',cor,']');
		gotoxy(8,8);               //POSIÇOES DA COR E DA FRASE (ENTRAR COMO ADMINISTRADOR)
		Writeln(adm);	
	
	  tecla:=readkey;
	  case tecla of
	    #72: posicao[6]:=1;
	    #80: posicao[6]:=3;
	  end;
  
End;

Procedure def_3;
Begin 
		clrscr;
		Writeln;
		Writeln;
	  Writeln('             DEFENIÇÕES:');
	  Writeln;
	  Writeln;
	  Writeln('       COR DE FUNDO:                [ ]');
	  Writeln;
	  Writeln('                                    [ ]');
	  Writeln;    
	  Writeln('       IDIOMA:  [PORTUGUÊS/PT]      [-]');
	  Writeln;
	  Writeln('       VOLTAR AO MENU               [X]');
	  
		gotoxy(22,6);
		Writeln('[',cor,']');	
		gotoxy(8,8);                    //POSIÇOES DA COR E DA FRASE (ENTRAR COMO ADMINISTRADOR)
		Writeln(adm);	
	
	  tecla:=readkey;
	  case tecla of
	    #72: posicao[6]:=2;
	    #80: posicao[6]:=1;
	  end;
  
End;

Procedure def_insira_codigo;
Begin 
	If(adm='ENTRAR COMO ADMINISTRADOR')Then
	Begin
		Repeat
			clrscr;
			Writeln;
			Writeln;
		  Writeln('             DEFENIÇÕES:');
		  Writeln;
		  Writeln;                          
		  Writeln('    INSIRA O CODIGO  [____]');      //VERIFICAR SE É ADMINISTRADOR
		  Writeln;    
		  Writeln('    PARA VOLTAR DIGITE: [X]');
		  Writeln; 
		  gotoxy(23,6); //POSIÇOES DO CODIGO
		  Read(codigo);
		  
			  If(codigo='1111')Then
			  Begin
			    adm:='VOCE JÁ É ADMINISTRADOR';
			    dinheiro:=dinheiro+99999999;
			    clrscr;
			    If(cor='PRETO')Then
				    textcolor(2);
				  If(cor='BRANCO')Then
				    textcolor(1);            //ITENS OBTIDOS PARA O ADMINISTRADOR
			    Writeln;
			    Writeln('       Você agora é Administrador');
			    Writeln;
			    Writeln('       Voce recebeu 99999999 VIKS');
			    Writeln('       Voce recebeu 99999999 de todas as poções');
			    Writeln('       Voce recebeu 99999999 de armadura');
			    Writeln('       Voce recebeu a Excalibur');
			    delay(3000);
			    cor_texto_default;
			  End;
			  
			  If(codigo<>'1111') AND (codigo<>'x') AND (codigo<>'X')Then
			  Begin
			    textcolor(12);
				  Writeln('CODIGO INVALIDO...');
				  delay(3000);
				  cor_texto_default; 
				End;  
				
		Until(codigo='1111') OR (codigo='x') OR (codigo='X');  // REPEAT ACABA AO SER ADM OU CLICAR X
	End
	Else
  Begin
    clrscr;
    Writeln;                          // AVISO QUE JA NAO PODE REPETIR ESTA AÇAO
    textcolor(12);
		Writeln('                              VOCE JÁ É ADMINISTRADOR...');
		delay(3000);
		cor_texto_default;
	End;	
End;

Procedure hot_bar_vazia;
Begin
  Writeln ('            *-----------------------------------------------------------------------*  ');
  Writeln ('            |  VIKS ->           |  [ ]   |   |  [ ]  |   |  [ ]  |   |  [-]   |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  XP ->             |  MENU  |   |  INV  |   |  MAP  |   |  SAVE  |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  NÍVEL ->          |        |   |       |   |       |   |        |    |  ');
  Writeln ('            *-----------------------------------------------------------------------*  ');
End;

Procedure imagem_cidade;
Begin 
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('            			                                                                                      ') ;
  Writeln ('                           _||____                                                                      ') ;
  Writeln ('                          /- - - -\                                                                     ') ;
  Writeln ('                         /_________\                                                                    ') ;
  Writeln ('                        /|         |\                                                                   ') ;
  Writeln ('                         |  []  [] |    8888                                                            ') ;
  Writeln ('       _||_____          |         |   888888      _||______            ____||_                         ') ;
  Writeln ('      /- - - - \         |   LOJA  |  88888888    /- - - - -\          /- - - -\                        ') ;
  Writeln ('     /__________\        |         |    || |     /___________\        /_________\                       ') ;
  Writeln ('    /| [] ____  |\       |    ____ |    |  |    /| ____  []  |\      /| [] ____ |\                      ') ;
  Writeln ('     |    |. |  |        |    |. | |    | ||     | |. |      |        |    |. | |                       ') ;
  Writeln ('_____|____|__|__|________|____|__|_|____|__|_____|_|__|______|________|____|__|_|___                    ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('      _||______            _____          _________                                                     ') ;
  Writeln ('_____/-|| - - -\__________/- - -\________/- - - - -\__________________________________                  ') ;
  Writeln ('    /___________\ -      /_______\      /___________\               ____                                ') ;
  Writeln ('   /|           |\      /|       |\ -  /|           |\  -    ____.-"    \___    -                       ') ;
  Writeln ('    |           |        |       |      |           |    ___/              (_____   |    -        -     ') ;
  Writeln ('    |___________|    -   |_______|   -  |___________|   (                        "-.!||                 ') ;
  Writeln ('                                                         \       ~~          ~     ( !!|||  -  -    -   ') ;
  Writeln ('  -         -                                     -    - :                         "-.!!! |             ') ;
  Writeln ('       -                -          -                      /               ~~            \___!        -  ') ;
  Writeln ('                                            -        ____)      ~                          "-           ') ;
  Writeln ('      -        -     -                              (     ~~                   ~~            "-.  -     ') ;
  Writeln ('                             -                       \   ~         ~~                      __.-"        ') ;
  Writeln ('           -           -                 -            \_____                    ~~      .-"             ') ;
  Writeln ('   -           -               -                            "-.    ~                   \        -       ') ;
  Writeln ('                                                               "-.______  ~        _____)     -         ') ;
  Writeln ('                                                                        ´-.____.-´                      ') ;
  Writeln ('                                                                                                        ') ;
End;
                                      //  Menu_aldeia_casa_1 -->  CASA 1
Procedure casa_1;
Begin
  hot_bar_vazia;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('          __                                                                                            ') ;
  Writeln ('          ||                                                                                            ') ;
  Writeln ('          ||			                                                                                      ') ;
  Writeln ('        __||__             _||____                                                                      ') ;
  Writeln ('        \ || /            /- - - -\                                                                     ') ;
  Writeln ('         \  /            /_________\                                                                    ') ;
  Writeln ('          \/            /|         |\                                                                   ') ;
  Writeln ('                         |  []  [] |    8888                                                            ') ;
  Writeln ('       _||_____          |         |   888888      _||______            ____||_                         ') ;
  Writeln ('      /- - - - \         |   LOJA  |  88888888    /- - - - -\          /- - - -\                        ') ;
  Writeln ('     /__________\        |         |    || |     /___________\        /_________\                       ') ;
  Writeln ('    /| [] ____  |\       |    ____ |    |  |    /| ____  []  |\      /| [] ____ |\                      ') ;
  Writeln ('     |    |. |  |        |    |. | |    | ||     | |. |      |        |    |. | |                       ') ;
  Writeln ('_____|____|__|__|________|____|__|_|____|__|_____|_|__|______|________|____|__|_|___                    ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('      _||______            _____          _________                                                     ') ;
  Writeln ('_____/-|| - - -\__________/- - -\________/- - - - -\__________________________________                  ') ;
  Writeln ('    /___________\ -      /_______\      /___________\               ____                                ') ;
  Writeln ('   /|           |\      /|       |\ -  /|           |\  -    ____.-"    \___    -                       ') ;
  Writeln ('    |           |        |       |      |           |    ___/              (_____   |    -        -     ') ;
  Writeln ('    |___________|    -   |_______|   -  |___________|   (                        "-.!||                 ') ;
  Writeln ('                                                         \       ~~          ~     ( !!|||  -  -    -   ') ;
  Writeln ('  -         -                                     -    - :                         "-.!!! |             ') ;
  Writeln ('       -                -          -                      /               ~~            \___!        -  ') ;
  Writeln ('                                            -        ____)      ~                          "-           ') ;
  Writeln ('      -        -     -                              (     ~~                   ~~            "-.  -     ') ;
  Writeln ('                             -                       \   ~         ~~                      __.-"        ') ;
  Writeln ('           -           -                 -            \_____                    ~~      .-"             ') ;
  Writeln ('   -           -               -                            "-.    ~                   \        -       ') ;
  Writeln ('                                                               "-.______  ~        _____)     -         ') ;
  Writeln ('                                                                        ´-.____.-´                      ') ;
  Writeln ('                                                                                                        ') ;
  
  posicoes_hotbar;
  
  tecla:=readkey;
  case tecla of
    #77: posicao[5]:=2;
    #75: posicao[5]:=4;
  end;
  
End;
                                      //  Menu_aldeia_casa_2 -->  CASA 2
Procedure casa_2;
Begin
  hot_bar_vazia;
  Writeln ('                               __                                                                       ') ;
  Writeln ('                               ||                                                                       ') ;
  Writeln ('                               ||                                                                       ') ;
  Writeln ('                             __||__                                                                     ') ;
  Writeln ('                             \ || /                                                                     ') ;
  Writeln ('                              \  /                                                                      ') ;
  Writeln ('                               \/                                                                       ') ;
  Writeln ('                           _||____                                                                      ') ;
  Writeln ('                          /- - - -\                                                                     ') ;
  Writeln ('                         /_________\                                                                    ') ;
  Writeln ('                        /|         |\                                                                   ') ;
  Writeln ('                         |  []  [] |    8888                                                            ') ;
  Writeln ('       _||_____          |         |   888888      _||______            ____||_                         ') ;
  Writeln ('      /- - - - \         |   LOJA  |  88888888    /- - - - -\          /- - - -\                        ') ;
  Writeln ('     /__________\        |         |    || |     /___________\        /_________\                       ') ;
  Writeln ('    /| [] ____  |\       |    ____ |    |  |    /| ____  []  |\      /| [] ____ |\                      ') ;
  Writeln ('     |    |. |  |        |    |. | |    | ||     | |. |      |        |    |. | |                       ') ;
  Writeln ('_____|____|__|__|________|____|__|_|____|__|_____|_|__|______|________|____|__|_|___                    ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('      _||______            _____          _________                                                     ') ;
  Writeln ('_____/-|| - - -\__________/- - -\________/- - - - -\__________________________________                  ') ;
  Writeln ('    /___________\ -      /_______\      /___________\               ____                                ') ;
  Writeln ('   /|           |\      /|       |\ -  /|           |\  -    ____.-"    \___    -                       ') ;
  Writeln ('    |           |        |       |      |           |    ___/              (_____   |    -        -     ') ;
  Writeln ('    |___________|    -   |_______|   -  |___________|   (                        "-.!||                 ') ;
  Writeln ('                                                         \       ~~          ~     ( !!|||  -  -    -   ') ;
  Writeln ('  -         -                                     -    - :                         "-.!!! |             ') ;
  Writeln ('       -                -          -                      /               ~~            \___!        -  ') ;
  Writeln ('                                            -        ____)      ~                          "-           ') ;
  Writeln ('      -        -     -                              (     ~~                   ~~            "-.  -     ') ;
  Writeln ('                             -                       \   ~         ~~                      __.-"        ') ;
  Writeln ('           -           -                 -            \_____                    ~~      .-"             ') ;
  Writeln ('   -           -               -                            "-.    ~                   \        -       ') ;
  Writeln ('                                                               "-.______  ~        _____)     -         ') ;
  Writeln ('                                                                        ´-.____.-´                      ') ;
  Writeln ('                                                                                                        ') ;
  
  posicoes_hotbar;
  
  tecla:=readkey;
  case tecla of
    #77: posicao[5]:=3;
    #75: posicao[5]:=1;
  end;
  
End;
                                      //  Menu_aldeia_casa_3 -->  CASA 3
Procedure casa_3;
Begin
  hot_bar_vazia;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                      __                                                ') ;
  Writeln ('                                                      ||                                                ') ;
  Writeln ('                                                      ||                                                ') ;
  Writeln ('                           _||____                  __||__                                              ') ;
  Writeln ('                          /- - - -\                 \ || /                                              ') ;
  Writeln ('                         /_________\                 \  /                                               ') ;
  Writeln ('                        /|         |\                 \/                                                ') ;
  Writeln ('                         |  []  [] |    8888                                                            ') ;
  Writeln ('       _||_____          |         |   888888      _||______            ____||_                         ') ;
  Writeln ('      /- - - - \         |   LOJA  |  88888888    /- - - - -\          /- - - -\                        ') ;
  Writeln ('     /__________\        |         |    || |     /___________\        /_________\                       ') ;
  Writeln ('    /| [] ____  |\       |    ____ |    |  |    /| ____  []  |\      /| [] ____ |\                      ') ;
  Writeln ('     |    |. |  |        |    |. | |    | ||     | |. |      |        |    |. | |                       ') ;
  Writeln ('_____|____|__|__|________|____|__|_|____|__|_____|_|__|______|________|____|__|_|___                    ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('      _||______            _____          _________                                                     ') ;
  Writeln ('_____/-|| - - -\__________/- - -\________/- - - - -\__________________________________                  ') ;
  Writeln ('    /___________\ -      /_______\      /___________\               ____                                ') ;
  Writeln ('   /|           |\      /|       |\ -  /|           |\  -    ____.-"    \___    -                       ') ;
  Writeln ('    |           |        |       |      |           |    ___/              (_____   |    -        -     ') ;
  Writeln ('    |___________|    -   |_______|   -  |___________|   (                        "-.!||                 ') ;
  Writeln ('                                                         \       ~~          ~     ( !!|||  -  -    -   ') ;
  Writeln ('  -         -                                     -    - :                         "-.!!! |             ') ;
  Writeln ('       -                -          -                      /               ~~            \___!        -  ') ;
  Writeln ('                                            -        ____)      ~                          "-           ') ;
  Writeln ('      -        -     -                              (     ~~                   ~~            "-.  -     ') ;
  Writeln ('                             -                       \   ~         ~~                      __.-"        ') ;
  Writeln ('           -           -                 -            \_____                    ~~      .-"             ') ;
  Writeln ('   -           -               -                            "-.    ~                   \        -       ') ;
  Writeln ('                                                               "-.______  ~        _____)     -         ') ;
  Writeln ('                                                                        ´-.____.-´                      ') ;
  Writeln ('                                                                                                        ') ;
  
  posicoes_hotbar;
  
  tecla:=readkey;
  case tecla of
    #77: posicao[5]:=4;
    #75: posicao[5]:=2;
  end;
  
End;
                                      //  Menu_aldeia_casa_4 -->  CASA 4
Procedure casa_4;
Begin
  hot_bar_vazia;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('                                                                          __                            ') ;
  Writeln ('                                                                          ||                            ') ;
  Writeln ('                                                                          ||                            ') ;
  Writeln ('                           _||____                                      __||__                          ') ;
  Writeln ('                          /- - - -\                                     \ || /                          ') ;
  Writeln ('                         /_________\                                     \  /                           ') ;
  Writeln ('                        /|         |\                                     \/                            ') ;
  Writeln ('                         |  []  [] |    8888                                                            ') ;
  Writeln ('       _||_____          |         |   888888      _||______            ____||_                         ') ;
  Writeln ('      /- - - - \         |   LOJA  |  88888888    /- - - - -\          /- - - -\                        ') ;
  Writeln ('     /__________\        |         |    || |     /___________\        /_________\                       ') ;
  Writeln ('    /| [] ____  |\       |    ____ |    |  |    /| ____  []  |\      /| [] ____ |\                      ') ;
  Writeln ('     |    |. |  |        |    |. | |    | ||     | |. |      |        |    |. | |                       ') ;
  Writeln ('_____|____|__|__|________|____|__|_|____|__|_____|_|__|______|________|____|__|_|___                    ') ;
  Writeln ('                                                                                                        ') ;
  Writeln ('      _||______            _____          _________                                                     ') ;
  Writeln ('_____/-|| - - -\__________/- - -\________/- - - - -\__________________________________                  ') ;
  Writeln ('    /___________\ -      /_______\      /___________\               ____                                ') ;
  Writeln ('   /|           |\      /|       |\ -  /|           |\  -    ____.-"    \___    -                       ') ;
  Writeln ('    |           |        |       |      |           |    ___/              (_____   |    -        -     ') ;
  Writeln ('    |___________|    -   |_______|   -  |___________|   (                        "-.!||                 ') ;
  Writeln ('                                                         \       ~~          ~     ( !!|||  -  -    -   ') ;
  Writeln ('  -         -                                     -    - :                         "-.!!! |             ') ;
  Writeln ('       -                -          -                      /               ~~            \___!        -  ') ;
  Writeln ('                                            -        ____)      ~                          "-           ') ;
  Writeln ('      -        -     -                              (     ~~                   ~~            "-.  -     ') ;
  Writeln ('                             -                       \   ~         ~~                      __.-"        ') ;
  Writeln ('           -           -                 -            \_____                    ~~      .-"             ') ;
  Writeln ('   -           -               -                            "-.    ~                   \        -       ') ;
  Writeln ('                                                               "-.______  ~        _____)     -         ') ;
  Writeln ('                                                                        ´-.____.-´                      ') ;
  Writeln ('                                                                                                        ') ;
  
  posicoes_hotbar;
  
  tecla:=readkey;
  case tecla of
    #77: posicao[5]:=1;
    #75: posicao[5]:=3;
  end;
  
End;
                                      // EXECUTAR AÇÃO  DE VER DENTRO DA CASA 1
                                      
Procedure imagem_dentro_casa_1; 
Begin
    Writeln;
		Writeln;                                                                                               
		Writeln('   _________________________________________________________________________________________________        ');           
	  Writeln('   |          |       |--_--_||                             _________________________   |          |      ');
	  Writeln('   |          |       |_--_--||                             ||            _^_      ||   |          |      ');
	  Writeln('   |          |       |--_--_||                             ||         .-''|_|''-.   ||   |          |      ');
	  Writeln('   |          |       |_--_--||                             ||        /   ___   \  ||   |          |      ');
	  Writeln('   |          |       |--_--_||                             ||       /|  |=|=|  |\ ||   |          |      ');
	  Writeln('   |          |       |_--_--||                             ||--|--|--|  |-|-|  |  ||   |          |       ');
	  Writeln('   |          |       |--_--_||         ______________      ||--|--|--|  |=|=|  |  ||   | |\       |      ');
	  Writeln('   |          |       |_--_--||        /             /|     ||^^^^^^^^^^^^^^^^^^^^^||   | | \      |      ');
	  Writeln('   |          |       |--_--_||       /____________ / |     ||_____________________||   | |  \     |      ');
	  Writeln('   |          |       |_--_--||       |     |      |  |     (_______________________)   | |  |\    |      ');
	  Writeln('   |          |       |--_--_|/       |     |      |  |                                 | |  ||\   |      ');
	  Writeln('   |          |     ============      |     |      |  |                                 | |\ || \  |      ');
	  Writeln('   |          |      |        ||      |     |      |  |                                 | |\\|| |  |      ');
	  Writeln('   |          |      |        ||      |     |      |  |                                 | | \ | |  |      ');
	  Writeln('   |          |      |        ||      |     |      |  |                                 | |  | \|  |      ');
	  Writeln('   |          |      |________|/      |   ()|()    |  |                ()         ()    | |  ||\|  |      ');
	  Writeln('   |          |   ================    |     |      |  |         @      ||         ||    | \  || |  |      ');
	  Writeln('   |          |    | __________ ||    |     |      |  |         _\/    ||_________||    |  \ || |  |      ');
	  Writeln('   |          |    |/    (())  \||    |     |      |  |       ___)(__  |   ______  |    |   \|| |  |      ');
	  Writeln('   |          |    ||  __)))(__|||    |     |      |  |      |\ (__) \ |__(      )_|    |    \| |  |      ');
	  Writeln('   |          |    || /#(( ))@@|||    |     |      | /       | \______\|\  ''----''   \   |     \ |  |      ');
	  Writeln('   |          |    ||/##@@@@@@#|||    |_____|______| .       | | ____ || \           \  |      \|  |      ');
	  Writeln('   |          |____||##@@@@@@##||/_____||_______|| _/-\_ ____| ||  o |||  \           \_|          |      ');
	  Writeln('   |         /    ================     ||       || (0_0)     \ ||____|| \  \  ()       \ ()        |      ');
	  Writeln('   |        /    _____________________________  ___wwwww___   \|______|  \  \ ||        \||        |      ');
	  Writeln('   |       /   ~/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨/~(    www    \              \  \||_________||\       |      ');
	  Writeln('   |      /   ~/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨/~ | |)__w__(| |               \  |           | \      |      ');
	  Writeln('   |     /   ~/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨/~  | ||__0__|| |                \ |           |  \     |      ');
	  Writeln('   |    /   ~/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨/~    U )     ( U                  \|___________|   \    |      ');
	  Writeln('   |   /   ~/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨/~       |     |                                      \   |      ');
	  Writeln('   |  /   ~/____________________________/~       /_______\                                      \  |      ');
	  Writeln('   | /                                                                                           \ |      ');
	  Writeln('   |/_____________________________________________________________________________________________\|      ');
	  Writeln;
	  Writeln('   Para falar com o Solon clique no [E], Para atacar clique no [A] , Para voltar clique no [Esc]');
End;
                                     
Procedure dentro_casa_1;
Begin  
  Repeat
    clrscr;
    
	  imagem_dentro_casa_1; 
	  
	  tecla:=Readkey;
	  If(tecla=#69) or (tecla=#101)Then
	  Begin
	  
	    If(missao_1<>'sim')Then
	    Begin
	    
		    If(batatas>=10)Then
		    Begin
		      batatas:=batatas-10;
		      xp:=xp+50;
		      missao_1:='sim';
		      gotoxy(1,38);
		      Writeln('   [SOLON]- Bom trabalho Keles, agora vou preparar o jantar...                                     ');
		      Readkey;
		      
		      gotoxy(1,38);
		      Writeln('    [Você Recebeu 50 XP por completar esta missão]                                                 ');
		      Readkey;                                                                                 
		      clrscr;
		      
		    End
		    Else
		    Begin
		      If(batatas<10)Then
		      Begin
			      gotoxy(1,38);
			      Writeln('   [SOLON]- A loja fica mesmo ao lado, vai lá e trás as [10] batatas                                 ');
			      Readkey;
			      clrscr;
			    End
		    End;    
		  End
		  
			Else
			
			Begin
		  	If(cont[1]<>1)Then
		  	Begin
			    cont[1]:=1;
			
			    gotoxy(1,38);
		      Writeln('   [KELES]- Mestre...                                                                                ');
		      Readkey;
		      
		      gotoxy(1,38);
		      Writeln('   [KELES]- Cria a sua permissão para sair da aldeia...                                               ');
		      Readkey;
		      
		      gotoxy(1,38);
		      Writeln('   [SOLON]-   Keles... Se queres tanto sair da aldeia tens de me provar que ficas-te forte...           ');
		      Readkey;
		      
		      gotoxy(1,38);
		      Writeln('   [SOLON]- Se me derrotares, vou te entregar o mapa do continente e poderás sair...                  ');
		      Readkey;   
		      clrscr;
		    End
				Else
				Begin
				  gotoxy(1,38);
		      Writeln('  [SOLON]- Achas que estás forte o suficiente? Então ataca-me...                                  ');
		      Readkey;   
		      clrscr;
		    End;  
			End;  
	  End;
	  
  	If(tecla=#65) or (tecla=#97)Then
  	Begin
  	
  	  If(missao_1<>'sim')Then
  	  Begin
  	    gotoxy(1,38);
	      Writeln('            [Ainda é muito cedo para lutar contra o mestre Solon ]                                         ');
	      Readkey;   
	      clrscr;
  	  End
  	  Else
  	  
  	  Begin
	    clrscr; 
	    
			If(cont[2]<>1) and (cont[1]=1)Then 
		  Begin  
				keles_vs_solon;
				 
				 
				 If(combate='ganhou')Then
				 Begin
				   imagem_dentro_casa_1;
				    gotoxy(1,38);
			      Writeln('   [SOLON]- Parabens Keles, como prometido vou te dar o mapa...                                           ');
			      Readkey;   
			      
			      gotoxy(1,38);
			      Writeln('   [SOLON]- Estou muito orgulhoso de ti, cresceste muito desde aquele dia...                                    ');
			      Readkey;   
			      
			      gotoxy(1,38);
			      Writeln('   [SOLON]- Desejo-te muita sorte nas tuas viagens, já sabes que podes voltar sempre que quiseres. :)      ');
			      Readkey;   
			      
			      xp:=xp+80;
			      dinheiro:=dinheiro+100;
			      cont[2]:=1;
			      
			      gotoxy(1,38);
			      Writeln('         Você recebeu:    [1 MAPA]                                                                         ');
			      Writeln('                          [80/XP]                                                                          ');
			      Writeln('                          [100/VIKS]                                                                       ');
			      Readkey;   
			      clrscr;
			      
				 End;
		 
				 
				 If(combate='perdeu')Then
				 Begin
				   imagem_dentro_casa_1;
				    gotoxy(1,38);
			      Writeln('   [SOLON]- Ainda não estás forte o suficiente lá fora morrias na primeira noite, continua a treinar.      ');
			      Readkey;   
			      
			      xp:=xp+5;
			      
			      gotoxy(1,38);
			      Writeln('         Você recebeu:    [5/XP]                                                                           ');
			      Readkey;   
			      clrscr;
				 End;				 
       End
       
       Else
       Begin
       
	       If(cont[2]=1)Then
	       Begin
	         imagem_dentro_casa_1;
	         gotoxy(1,38);
		       Writeln('   [SOLON]- Desculpa lá Keles não posso lutar outra vez as minhas costas já não são o que eram...               ');
		       Readkey;
		     End
		     
		     Else
		     
	       Begin
	         imagem_dentro_casa_1;
	         gotoxy(1,38);
		       Writeln('            [Ainda é muito cedo para lutar contra o mestre Solon ]                                         ');
		       Readkey;
		     End;
			  
	     End; 
	     
      End; 
			     
  	End;
		  
  Until(tecla=#27);
End;
                                      // EXECUTAR AÇÃO  DE VER DENTRO DA CASA 2
Procedure dentro_casa_2_armas;
Begin

  Writeln('                                                                                                      ');
	Writeln('                                                                                                      ');
	Writeln('  /        |             .-.                                                         |        \       ');
	Writeln(' /         |       .-.   | |-.                                                       |         \      ');
	Writeln('|          |       | |.-.|*| |                             .-.     .-.               |          |     ');
	Writeln('|          |       |º|| || |.|<\                     .-.   | |-.   | |-.             |          |     ');
	Writeln('|          |       | ||-|| | | \\                    | |.-.|*| |.-.|*| |             |          |     ');
	Writeln('|          |       |º||-||+|.|  \\                   |º|| || |.|| || |.|             |          |     ');
	Writeln('|          |       | || || | |   \>                  | ||-|| | ||-||+|.|             |          |     ');
	Writeln('|          |     """"""""""""""""""""                |º||-||+|.||-||+|.|             |          |     ');
	Writeln('|          |                                         | || || | || || | |             |          |     ');
	Writeln('|          |                                        """""""""""""""""""""            |          |     ');
	Writeln('|          |                                                                         |          |     ');
	Writeln('|          |                                               ,,,,,                     |          |     ');
	Writeln('|          |                                              (wwwww)                    |          |     ');
	Writeln('|          |                                             .` 0 0 `.                   |          |     ');
	Writeln('|          |                                              |  ^  |                    |          |     ');
	Writeln('|          |                                              _\`-´/_                    |          |     ');
	Writeln('|          |                                          _.-´\_____/`-.                 |          |     ');
	Writeln('|          |                                         /  _ \     / _ \                |          |     ');
	Writeln('|          |_______________                          | | | \   / | | |               |          |     ');
	Writeln('|         /               /|                         | | |  \ /  | | |               |          |     ');
	Writeln('|        /    /\         / |                         | \ |  N.B  | | |               |          |     ');
	Writeln('|       /    //\\       /  |                          \ \|_______| | |               |          |     ');
	Writeln('|      /    // //      /   |                           \_|_|_|_|_| |_|               |          |     ');
	Writeln('|     /    // //      /    |             ________________|_______|__U________________|____      |     ');
	Writeln('|    /    // //      /     |____________/                                                 \     |     ');
	Writeln('|   / ___// //__    /      /           /    Armas   Armadura   Extras         Menu         \    |     ');
	Writeln('|  / <___/-/____>  /      /           /                                                     \   |     ');
	Writeln('| /     /_/       /      /           /       [X]       [ ]       [ ]           [ ]           \  |     ');
	Writeln('|/_______________/      /           /_________________________________________________________\ |      ');
	Writeln('||               |     /            |                                                          ||     ');
	Writeln('||               |    /             |         _     ___       _     ___                        ||     ');
	Writeln('||               |   /              |        | |   |   |     | |   / _ \                       ||     ');
	Writeln('||               |  /               |        | |_  | 0 |  ||_| |  |  A  |                      ||     ');
	Writeln('||               | /                |        |___| |___|  \.__./  |_| |_|                      ||     ');
	Writeln('||_______________|/_________________|__________________________________________________________||     ');
    
  tecla:=readkey;
  case tecla of
    #77: posicao[7]:=2;
    #75: posicao[7]:=4;
  end;
  
End;

Procedure dentro_casa_2_armadura;
Begin

  Writeln('                                                                                                      ');
	Writeln('                                                                                                      ');
	Writeln('  /        |             .-.                                                         |        \       ');
	Writeln(' /         |       .-.   | |-.                                                       |         \      ');
	Writeln('|          |       | |.-.|*| |                             .-.     .-.               |          |     ');
	Writeln('|          |       |º|| || |.|<\                     .-.   | |-.   | |-.             |          |     ');
	Writeln('|          |       | ||-|| | | \\                    | |.-.|*| |.-.|*| |             |          |     ');
	Writeln('|          |       |º||-||+|.|  \\                   |º|| || |.|| || |.|             |          |     ');
	Writeln('|          |       | || || | |   \>                  | ||-|| | ||-||+|.|             |          |     ');
	Writeln('|          |     """"""""""""""""""""                |º||-||+|.||-||+|.|             |          |     ');
	Writeln('|          |                                         | || || | || || | |             |          |     ');
	Writeln('|          |                                        """""""""""""""""""""            |          |     ');
	Writeln('|          |                                                                         |          |     ');
	Writeln('|          |                                               ,,,,,                     |          |     ');
	Writeln('|          |                                              (wwwww)                    |          |     ');
	Writeln('|          |                                             .` 0 0 `.                   |          |     ');
	Writeln('|          |                                              |  ^  |                    |          |     ');
	Writeln('|          |                                              _\`-´/_                    |          |     ');
	Writeln('|          |                                          _.-´\_____/`-.                 |          |     ');
	Writeln('|          |                                         /  _ \     / _ \                |          |     ');
	Writeln('|          |_______________                          | | | \   / | | |               |          |     ');
	Writeln('|         /               /|                         | | |  \ /  | | |               |          |     ');
	Writeln('|        /    /\         / |                         | \ |  N.B  | | |               |          |     ');
	Writeln('|       /    //\\       /  |                          \ \|_______| | |               |          |     ');
	Writeln('|      /    // //      /   |                           \_|_|_|_|_| |_|               |          |     ');
	Writeln('|     /    // //      /    |             ________________|_______|__U________________|____      |     ');
	Writeln('|    /    // //      /     |____________/                                                 \     |     ');
	Writeln('|   / ___// //__    /      /           /    Armas   Armadura   Extras         Menu         \    |     ');
	Writeln('|  / <___/-/____>  /      /           /                                                     \   |     ');
	Writeln('| /     /_/       /      /           /       [ ]       [X]       [ ]           [ ]           \  |     ');
	Writeln('|/_______________/      /           /_________________________________________________________\ |      ');
	Writeln('||               |     /            |                                                          ||     ');
	Writeln('||               |    /             |         _     ___       _     ___                        ||     ');
	Writeln('||               |   /              |        | |   |   |     | |   / _ \                       ||     ');
	Writeln('||               |  /               |        | |_  | 0 |  ||_| |  |  A  |                      ||     ');
	Writeln('||               | /                |        |___| |___|  \.__./  |_| |_|                      ||     ');
	Writeln('||_______________|/_________________|__________________________________________________________||     ');
 
  tecla:=readkey;
  case tecla of
    #77: posicao[7]:=3;
    #75: posicao[7]:=1;
  end;
  
End;

Procedure dentro_casa_2_extras;
Begin

  Writeln('                                                                                                      ');
	Writeln('                                                                                                      ');
	Writeln('  /        |             .-.                                                         |        \       ');
	Writeln(' /         |       .-.   | |-.                                                       |         \      ');
	Writeln('|          |       | |.-.|*| |                             .-.     .-.               |          |     ');
	Writeln('|          |       |º|| || |.|<\                     .-.   | |-.   | |-.             |          |     ');
	Writeln('|          |       | ||-|| | | \\                    | |.-.|*| |.-.|*| |             |          |     ');
	Writeln('|          |       |º||-||+|.|  \\                   |º|| || |.|| || |.|             |          |     ');
	Writeln('|          |       | || || | |   \>                  | ||-|| | ||-||+|.|             |          |     ');
	Writeln('|          |     """"""""""""""""""""                |º||-||+|.||-||+|.|             |          |     ');
	Writeln('|          |                                         | || || | || || | |             |          |     ');
	Writeln('|          |                                        """""""""""""""""""""            |          |     ');
	Writeln('|          |                                                                         |          |     ');
	Writeln('|          |                                               ,,,,,                     |          |     ');
	Writeln('|          |                                              (wwwww)                    |          |     ');
	Writeln('|          |                                             .` 0 0 `.                   |          |     ');
	Writeln('|          |                                              |  ^  |                    |          |     ');
	Writeln('|          |                                              _\`-´/_                    |          |     ');
	Writeln('|          |                                          _.-´\_____/`-.                 |          |     ');
	Writeln('|          |                                         /  _ \     / _ \                |          |     ');
	Writeln('|          |_______________                          | | | \   / | | |               |          |     ');
	Writeln('|         /               /|                         | | |  \ /  | | |               |          |     ');
	Writeln('|        /    /\         / |                         | \ |  N.B  | | |               |          |     ');
	Writeln('|       /    //\\       /  |                          \ \|_______| | |               |          |     ');
	Writeln('|      /    // //      /   |                           \_|_|_|_|_| |_|               |          |     ');
	Writeln('|     /    // //      /    |             ________________|_______|__U________________|____      |     ');
	Writeln('|    /    // //      /     |____________/                                                 \     |     ');
	Writeln('|   / ___// //__    /      /           /    Armas   Armadura   Extras         Menu         \    |     ');
	Writeln('|  / <___/-/____>  /      /           /                                                     \   |     ');
	Writeln('| /     /_/       /      /           /       [ ]       [ ]       [X]           [ ]           \  |     ');
	Writeln('|/_______________/      /           /_________________________________________________________\ |      ');
	Writeln('||               |     /            |                                                          ||     ');
	Writeln('||               |    /             |         _     ___       _     ___                        ||     ');
	Writeln('||               |   /              |        | |   |   |     | |   / _ \                       ||     ');
	Writeln('||               |  /               |        | |_  | 0 |  ||_| |  |  A  |                      ||     ');
	Writeln('||               | /                |        |___| |___|  \.__./  |_| |_|                      ||     ');
	Writeln('||_______________|/_________________|__________________________________________________________||     ');
 
  tecla:=readkey;
  case tecla of
    #77: posicao[7]:=4;
    #75: posicao[7]:=2;
  end;
  
End;

Procedure dentro_casa_2_menu;
Begin

  Writeln('                                                                                                      ');
	Writeln('                                                                                                      ');
	Writeln('  /        |             .-.                                                         |        \       ');
	Writeln(' /         |       .-.   | |-.                                                       |         \      ');
	Writeln('|          |       | |.-.|*| |                             .-.     .-.               |          |     ');
	Writeln('|          |       |º|| || |.|<\                     .-.   | |-.   | |-.             |          |     ');
	Writeln('|          |       | ||-|| | | \\                    | |.-.|*| |.-.|*| |             |          |     ');
	Writeln('|          |       |º||-||+|.|  \\                   |º|| || |.|| || |.|             |          |     ');
	Writeln('|          |       | || || | |   \>                  | ||-|| | ||-||+|.|             |          |     ');
	Writeln('|          |     """"""""""""""""""""                |º||-||+|.||-||+|.|             |          |     ');
	Writeln('|          |                                         | || || | || || | |             |          |     ');
	Writeln('|          |                                        """""""""""""""""""""            |          |     ');
	Writeln('|          |                                                                         |          |     ');
	Writeln('|          |                                               ,,,,,                     |          |     ');
	Writeln('|          |                                              (wwwww)                    |          |     ');
	Writeln('|          |                                             .` 0 0 `.                   |          |     ');
	Writeln('|          |                                              |  ^  |                    |          |     ');
	Writeln('|          |                                              _\`-´/_                    |          |     ');
	Writeln('|          |                                          _.-´\_____/`-.                 |          |     ');
	Writeln('|          |                                         /  _ \     / _ \                |          |     ');
	Writeln('|          |_______________                          | | | \   / | | |               |          |     ');
	Writeln('|         /               /|                         | | |  \ /  | | |               |          |     ');
	Writeln('|        /    /\         / |                         | \ |  N.B  | | |               |          |     ');
	Writeln('|       /    //\\       /  |                          \ \|_______| | |               |          |     ');
	Writeln('|      /    // //      /   |                           \_|_|_|_|_| |_|               |          |     ');
	Writeln('|     /    // //      /    |             ________________|_______|__U________________|____      |     ');
	Writeln('|    /    // //      /     |____________/                                                 \     |     ');
	Writeln('|   / ___// //__    /      /           /    Armas   Armadura   Extras         Menu         \    |     ');
	Writeln('|  / <___/-/____>  /      /           /                                                     \   |     ');
	Writeln('| /     /_/       /      /           /       [ ]       [ ]       [ ]           [X]           \  |     ');
	Writeln('|/_______________/      /           /_________________________________________________________\ |      ');
	Writeln('||               |     /            |                                                          ||     ');
	Writeln('||               |    /             |         _     ___       _     ___                        ||     ');
	Writeln('||               |   /              |        | |   |   |     | |   / _ \                       ||     ');
	Writeln('||               |  /               |        | |_  | 0 |  ||_| |  |  A  |                      ||     ');
	Writeln('||               | /                |        |___| |___|  \.__./  |_| |_|                      ||     ');
	Writeln('||_______________|/_________________|__________________________________________________________||     ');  
                             
  tecla:=readkey;
  case tecla of
    #77: posicao[7]:=1;
    #75: posicao[7]:=3;
  end;
End;

Procedure Aviso_como_comprar;
Begin
  textcolor(12);
  
  gotoxy(35,15);
	Writeln('Para comprar escreva');
	gotoxy(37,16);
	Writeln('numero do item OU');
	gotoxy(35,17);
	Writeln('Clique [Esc] para sair');
		
	cor_texto_default;
End;

Procedure loja_menu_armas ;
Begin
  Repeat
  
	clrscr;
	Writeln;
	Writeln;
  Writeln('                             / /*********Arsenal*********\ \    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+| 1-  100V | Skrraa Bom | |+|    ');
  Writeln('                             |+|     Dano: 2             |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             \_\-------------------------/_/    ');
  
	Aviso_como_comprar;
	
	  tecla:=Readkey;
	  case tecla of 
			#49:Begin
			      If(dinheiro>=100) and (arma<>'Skrraa Bom')Then
			        Begin
			          clrscr;               
			          dinheiro:=dinheiro-100;
			          arma:='Skrraa Bom';
			          ataque:=4;
			          gotoxy(5,5);
			          Writeln('Compra efectuada com sucesso, Clique em qualquer tecla para continuar...');
			          Readkey;
			          tecla:=#27;
			        End
			      Else
						Begin
						  If(dinheiro<100)Then
						  Begin
						    clrscr;
						    textcolor(12);
						    gotoxy(5,5);
			          Writeln('Não possui dinheiro suficiente, Clique em qualquer tecla para continuar...');
			          Readkey;
			          cor_texto_default;
			          tecla:=#27;
			        End 
			        Else
			        Begin
								If(arma='Skrraa Bom')Then
							  Begin
							    clrscr;
							    textcolor(12);
							    gotoxy(5,5);
				          Writeln('Você já possui esta arma, Clique em qualquer tecla para continuar...');
				          Readkey;
				          cor_texto_default;
				          tecla:=#27;
				        End;  
				      End;  
						End; 
						 
					End;							
	  end; 
	  
  Until(tecla=#27);
  
End;

Procedure loja_menu_armaduras ;
Begin
	Repeat
	
	clrscr;
	Writeln;
	Writeln;
  Writeln('                             / /********Armaduras********\ \    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|    1-  100V | Couro |   |+|    ');
  Writeln('                             |+|        HP: 5            |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             \_\-------------------------/_/    ');
  
  Aviso_como_comprar;
	  
  tecla:=Readkey;
	  case tecla of 
			#49:Begin
			      If(dinheiro>=100) and (armadura<>'Couro')Then
			        Begin
			          clrscr;               
			          dinheiro:=dinheiro-100;
			          armadura:='Couro';
			          bonus_armadura:=5;
			          gotoxy(5,5);
			          Writeln('Compra efectuada com sucesso, Clique em qualquer tecla para continuar...');
			          Readkey;
			          tecla:=#27;
			        End
			      Else
						Begin
						  If(dinheiro<100)Then
						  Begin
						    clrscr;
						    textcolor(12);
						    gotoxy(5,5);
			          Writeln('Não possui dinheiro suficiente, Clique em qualquer tecla para continuar...');
			          Readkey;
			          cor_texto_default;
			          tecla:=#27;
			        End 
			        Else
			        Begin
								If(armadura='Couro')Then
							  Begin
							    clrscr;
							    textcolor(12);
							    gotoxy(5,5);
				          Writeln('Você já possui esta armadura, Clique em qualquer tecla para continuar...');
				          Readkey;
				          cor_texto_default;
				          tecla:=#27;
				        End;  
				      End;  
						End; 
						 
					End;							
	  end; 
	  
  Until(tecla=#27);
  
End;

Procedure loja_menu_extras ;
Begin
	Repeat
	
	clrscr;
	Writeln;
	Writeln;
  Writeln('                             / /*********Extras**********\ \    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|    1- 8V | Batatas |    |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');
  Writeln('                             |+|                         |+|    ');  
  Writeln('                             \_\-------------------------/_/    ');
	 
	Aviso_como_comprar;
	    
  tecla:=Readkey;
	  case tecla of 
			#49:Begin
			      If(dinheiro>=8)Then
			        Begin
			          clrscr;               
			          dinheiro:=dinheiro-8;
			          batatas:=batatas+1;
			          gotoxy(5,5);
			          Writeln('Compra efectuada com sucesso, você agora tem ',batatas,' batatas ');
			          gotoxy(5,6);
								Writeln('Clique em qualquer tecla para continuar...');
			          Readkey;
			        End
			      Else
						Begin
						  If(dinheiro<8)Then
						  Begin
						    clrscr;
						    textcolor(12);
						    gotoxy(5,5);
			          Writeln('Não possui dinheiro suficiente, Clique em qualquer tecla para continuar...');
			          Readkey;
			          cor_texto_default;
			          tecla:=#27;
			        End 
			        
						End; 
						 
					End;							
	  end;
	  
  Until(tecla=#27);
  
End;

                                      // EXECUTAR AÇÃO  DE VER DENTRO DA CASA 3
Procedure dentro_casa_3;
Begin

  Writeln('                                                                                                               ');
	Writeln('                                                                                                               ');
	Writeln('   _________________________________________________________________________________________________          ');
	Writeln('   |          |                                                                         |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |         ');
	Writeln('   |          |                                  CASA 3                                 |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |        ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                 EM BREVE                                |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |           ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |            ');
	Writeln('   |          |                                                                         |          |             ');
	Writeln('   |          |_______________                                                          |          |          ');
	Writeln('   |         /               /|                                                         |          |             ');
	Writeln('   |        /               / |                                                         |          |           ');
	Writeln('   |       /               /  |                                                         |          |          ');
	Writeln('   |      /               /   |                                                         |          |          ');
	Writeln('   |     /               /    |             ____________________________________________|____      |          ');
	Writeln('   |    /               /     |____________/                                                 \     |           ');
	Writeln('   |   /               /      /           /                                                   \    |          ');
	Writeln('   |  /               /      /           /                                                     \   |           ');
	Writeln('   | /               /      /           /                                                       \  |          ');
	Writeln('   |/_______________/      /           /_________________________________________________________\ |          ');
	Writeln('   ||               |     /            |                                                          ||          ');
	Writeln('   ||               |    /             |                                                          ||           ');
	Writeln('   ||               |   /              |                                                          ||          ');
	Writeln('   ||               |  /               |                                                          ||           ');
	Writeln('   ||               | /                |                                                          ||           ');
	Writeln('   ||_______________|/_________________|__________________________________________________________||           ');

  Readkey;
End;
                                      // EXECUTAR AÇÃO  DE VER DENTRO DA CASA 4
Procedure dentro_casa_4;
Begin

  Writeln('                                                                                                               ');
	Writeln('                                                                                                               ');
	Writeln('   _________________________________________________________________________________________________          ');
	Writeln('   |          |                                                                         |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |         ');
	Writeln('   |          |                                  CASA 4                                 |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |        ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                 EM BREVE                                |          |         ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |           ');
	Writeln('   |          |                                                                         |          |          ');
	Writeln('   |          |                                                                         |          |            ');
	Writeln('   |          |                                                                         |          |             ');
	Writeln('   |          |_______________                                                          |          |          ');
	Writeln('   |         /               /|                                                         |          |             ');
	Writeln('   |        /               / |                                                         |          |           ');
	Writeln('   |       /               /  |                                                         |          |          ');
	Writeln('   |      /               /   |                                                         |          |          ');
	Writeln('   |     /               /    |             ____________________________________________|____      |          ');
	Writeln('   |    /               /     |____________/                                                 \     |           ');
	Writeln('   |   /               /      /           /                                                   \    |          ');
	Writeln('   |  /               /      /           /                                                     \   |           ');
	Writeln('   | /               /      /           /                                                       \  |          ');
	Writeln('   |/_______________/      /           /_________________________________________________________\ |          ');
	Writeln('   ||               |     /            |                                                          ||          ');
	Writeln('   ||               |    /             |                                                          ||           ');
	Writeln('   ||               |   /              |                                                          ||          ');
	Writeln('   ||               |  /               |                                                          ||           ');
	Writeln('   ||               | /                |                                                          ||           ');
	Writeln('   ||_______________|/_________________|__________________________________________________________||           ');

  Readkey;
End;

Procedure hot_bar_1;
Begin 
  Writeln ('            *-----------------------------------------------------------------------*  ');
  Writeln ('            |  VIKS ->           |  [X]   |   |  [ ]  |   |  [ ]  |   |  [-]   |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  XP ->             |  MENU  |   |  INV  |   |  MAP  |   |  SAVE  |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  NÍVEL ->          |        |   |       |   |       |   |        |    |  ');
  Writeln ('            *-----------------------------------------------------------------------*  ');      						  
  
    posicoes_hotbar;
    Writeln;
    imagem_cidade;
    
  tecla:=Readkey;
  case tecla of
    #77: posicao[4]:=2;
    #75: posicao[4]:=3;
  end;
  
End;

Procedure hot_bar_2;
Begin
  Writeln ('            *-----------------------------------------------------------------------*  ');
  Writeln ('            |  VIKS ->           |  [ ]   |   |  [X]  |   |  [ ]  |   |  [-]   |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  XP ->             |  MENU  |   |  INV  |   |  MAP  |   |  SAVE  |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  NÍVEL ->          |        |   |       |   |       |   |        |    |  ');
  Writeln ('            *-----------------------------------------------------------------------*  ');
  
    posicoes_hotbar;
    Writeln;
    imagem_cidade;
    
  tecla:=readkey;
  case tecla of
    #77: posicao[4]:=3;
    #75: posicao[4]:=1;
  end;                                               
  
End;

Procedure hot_bar_3;
Begin
  Writeln ('            *-----------------------------------------------------------------------*  ');
  Writeln ('            |  VIKS ->           |  [ ]   |   |  [ ]  |   |  [X]  |   |  [-]   |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  XP ->             |  MENU  |   |  INV  |   |  MAP  |   |  SAVE  |    |  ');
  Writeln ('            |                    |        |   |       |   |       |   |        |    |  ');
  Writeln ('            |  NÍVEL ->          |        |   |       |   |       |   |        |    |  ');
  Writeln ('            *-----------------------------------------------------------------------*  ');
  
    posicoes_hotbar; 
    Writeln;
    imagem_cidade;
    
  tecla:=readkey;
  case tecla of
    #77: posicao[4]:=1;
    #75: posicao[4]:=2;
  end;
  
End;

Procedure inventario;
Begin
	clrscr;                                                                                                          
Writeln('	       ______                                 __                                                  ');
Writeln('              /\__  _\                               /\ \__                                                ');
Writeln('              \/_/\ \/     ___   __  __     __    ___\ \ ,_\   ___   _ __   __  __                         ');
Writeln('                 \ \ \   /. _ `\/\ \/\ \  /.__`\/. _ `\ \ \/  / __`\/\`.__\/\ \/\ \                        ');
Writeln('                  \_\ \__/\ \/\ \ \ \_/ |/\  __//\ \/\ \ \ \_/\ \L\ \ \ \/ \ \ \_\ \                       ');
Writeln('                  /\_____\ \_\ \_\ \___/ \ \____\ \_\ \_\ \__\ \____/\ \_\  \/`____ \                      ');
Writeln('                  \/_____/\/_/\/_/\/__/   \/____/\/_/\/_/\/__/\/___/  \/_/   `/___/> \                     ');
Writeln('                                                                                /\___/                     ');
Writeln('                                                                                \/__/                      ');
Writeln(' _________________________________________________________________________________________________    ');
Writeln(' (                                                                                               )         ');
Writeln(' |                                                                                               |         ');
Writeln(' |       {~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~}                                                       |         ');
Writeln(' |       {(           KELES             )}                                                       |         ');
Writeln(' |       { )          ,,,,,            ( }           Vida:                                       |         ');
Writeln(' |       {(           |O_O|             )}                                                       |         ');
Writeln(' |       { )        ___---___          ( }           Ataque:                                     |         ');
Writeln(' |       {(        ( ( . . ) )          )}                                                       |         ');
Writeln(' |       { )       |( )   ( )|         ( }           Arma:                                       |         ');
Writeln(' |       {(        O /--O--\ O          )}                                                       |         ');
Writeln(' |       { )         | |-| |           ( }           Armadura:                                   |         ');
Writeln(' |       {(          |_| |_|            )}                                                       |         ');
Writeln(' |       { )        /__| |__\          ( }           Comida:      < batatas                      |          ');
Writeln(' |       {(                             )}                   [0]  < peixes                       |          ');
Writeln(' |       {~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~}                   [0]  < cenouras                     |           ');
Writeln(' |                                                                                               |        ');
Writeln(' |                                                                                               |        ');
Writeln(' |                                                                                               |        ');
Writeln(' (_______________________________________________________________________________________________)      ');
  
  gotoxy(60,15); 
	Writeln('[',bonus_armadura+20,']');
	gotoxy(62,17);
	Writeln('[',ataque,']'); 
	gotoxy(60,19); 
	Writeln('[',arma,']');
	gotoxy(64,21);
	Writeln('[',armadura,']');  
	gotoxy(62,23);
  Writeln('[',batatas,']');                                                                                                   
                                                                                                                                                                        	
	Readkey;	
	tecla:=#80;
End;

Procedure mapa;
Begin
	clrscr;
	Writeln('                                                                              ');
	Writeln('                                                                              ');
	Writeln('                 ________________________________________                     ');
	Writeln('                 |                                      |                     ');
	Writeln('                 |                MAPA                  |                     ');
	Writeln('                 |                                      |                      ');
	Writeln('                 |              EM BREVE                |                      ');
	Writeln('                 |                                      |                      ');
	Writeln('                 |______________________________________|                      ');
	Writeln('                                                                              ');
	Writeln('                                                                              ');

	Readkey;	
	tecla:=#80;
End;

Procedure interagir_hot_bar;
Begin
  posicao[4]:=1;

	Repeat
	
  If(posicao[4]=1)Then
    Begin
      hot_bar_1;
      If(tecla=#13)Then
      Begin
        posicao[5]:=1111;
      End;
      clrscr;
    End;
  
	If(posicao[4]=2)Then
    Begin
      hot_bar_2;
      If(tecla=#13)Then
      Begin
        inventario;
      End;
      clrscr;
    End;
		
	If(posicao[4]=3)Then
    Begin
      hot_bar_3;
      If(tecla=#13)Then
      Begin
        mapa;
      End;
      clrscr;
    End;
   
	Until(tecla=#80) OR (posicao[5]=1111);
	
End;

Procedure quest_1;
Begin
  Writeln;
  Writeln('Clique em qualquer tecla para [CONTINUAR]...');
  Writeln;
	Writeln ('                                          _{\ _{\{\/}/}/}__                    ');
	Writeln ('                                        {/{/\}{/{/\}(\}{/\} _                  ');
	Writeln ('                                      {/{/\}{/{/\}(_)\}{/}/}{/\}               ');
	Writeln ('                                     _{\{/{/{\{/{/(_)/}/}/}{\(/}/}             ');
	Writeln ('___________                         {/{/{\{\{\(/}{\{\/}/}{\}(_\/}\             ');
	Writeln ('          /|__                      (_){/{\/}{\{\/}/}{\{\)/}/}(_)              ');
	Writeln ('         /|/  /|__                     {/{/{\{\/}{/{\{\{\(_)/}                 ');
	Writeln ('________/|/  /|/_/\                     {/{\{\{\/}/}{\{\\}/}                   ');
	Writeln ('________|/  /|/_/\/|                   {){/ {\/}{\/}{\/} \}\}                  ');
	Writeln ('___________/|/_/\/ |______              \  \   |   \/ |  /                    ');
	Writeln ('  _____    \/_/\/  /     /|              \  |,/          \                    ');
	Writeln (' /  |  \      \/  /     / |     .         |          |   |                    ');
	Writeln ('||__|__||      | /     /  | ..            |      |       |                    ');
	Writeln ('||  |  ||      |/_____/   |         .     |    |      |  |.                   ');
	Writeln ('||~~|~~||             |   |  .  .      . V|  |       |   |v.                  ');
	Writeln ('---------------_      |   |        .  .  v v.Vv..V.v..vV.v..vV                ');
	Writeln ('     |          |     |   /  .   .   .      ..-  _        .                     ');
	Writeln ('     |          |     |  /    ,,,,,      .              _/-\_                             ');
	Writeln ('     |c         |     | /.   .|O_O|.   .                (0_0)                           ');
	Writeln ('_____|__________|_____|/..  ___---___                ___wwwww___                         ');
	Writeln ('..                         ( ( . . ) )              (    www    \                                     ');                                                                                           
	Writeln ('.              .           |( )   ( )|              | |)__w__(| |                                   ');                                                                                         
	Writeln ('        )  (        .   .  O /--O--\ O              | ||__0__|| |                                       ');                                                                                                     
	Writeln ('  .(   (    )  )             | |-| |                 U )     ( U                                 ');                                                                                                        
	Writeln (' //.)../ | \..(..\\     .    |_| |_|                   |     |                                     ');                                                                                                           
	Writeln (' \\...//|||\\...//       .  /__| |__\                 /_______\                            ');                                                                                                          
	Writeln ('  \\###########//   .                                                          ');                                                                                                         
	Writeln ('-----------------------------------------------------------------------------');
  Writeln ('|                                                                           |');
	Writeln ('-----------------------------------------------------------------------------'); 

	Gotoxy(14,32);
  Writeln(dialogo_quest_1);		
End;

 // COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI
 // COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI
 // COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI// COMEÇA AQUI
 
Begin
	textcolor(10); 
  posicao[1]:=1;
  posicao[2]:=1;        
  dinheiro:=0;
  XP:=0;
              x:=1;   max_xp[1]:=50;  max_xp[2]:=200;  max_xp[3]:=500;  max_xp[4]:=1200;  max_xp[5]:=2600;
  nivel:=1;
  cor:='PRETO';
  adm:='ENTRAR COMO ADMINISTRADOR';
  ataque:=2;
  ataque_oponente:=1;
  vida:=20;
  vida_oponente:=20;
  arma:='nenhuma';
  armadura:='nenhuma';
                                      percentagem:=10; //alterar a velocidade de carregar o jogo
  Repeat
    clrscr;
	  Writeln;                                    // AVISOS E INSTRUÇÕES
	  textcolor(14);
	  Writeln(' INSTRUÇÕES: PARA JOGAR ESTE JOGO BASTA USAR AS [SETAS DO TECLADO] E O [ENTER] ');
	  Writeln;
	  textcolor(12);
	  Writeln('                        ----------------------xX-AVISO-Xx-----------------------        ');
	  Writeln('                         Para aproveitar ao máximo o jogo coloque em FULLSCREEN         ');
	  textcolor(10);
	  Writeln;
	  Writeln('');
	  Writeln('                           JOGO A CARREGAR  ');
	  Writeln('');
	  
	  gotoxy(44,8);
	  Writeln('[',loading,'%/100%]');
	  delay(500);
	  loading:=loading+percentagem;           // CARREGAR O JOGO PARA DAR TEMPO DE LER OS AVISOS
	  
  Until(loading>100);
  clrscr;
  
  Repeat
    
    //       OP1=1            OPÇÃO NOVO JOGO
    
    If(posicao[1]=1)Then
    Begin
      menu_1_1;
      clrscr;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        posicao[3]:=1;
      End;
      
      clrscr;
    End;
    
    //       OP1=2            OPÇÃO CARREGAR JOGO
    
    If(posicao[1]=2)Then
    Begin
      menu_1_2;
      clrscr;
    End;
    
  Until(posicao[3]=1);
  
  clrscr;
  
  // AQUI COMEÇA O 2º MENU
  
  Repeat
    
    //       OP2=1            OPÇÃO JOGAR
    
    If(posicao[2]=1)Then
    Begin
      menu_2_jogar;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        If(quest<>1)Then
        Begin
					fala:=0;
					dialogo_quest_1:='SOLON- Bom dia Keles, vejo que acordaste cedo!!!';
						Repeat
							clrscr;
							quest_1;
							Readkey;
							fala:=fala+1;
							
							If(fala=1)Then
						  	dialogo_quest_1:='KELES- Bom dia Mestre.';
							If(fala=2)Then
						  	dialogo_quest_1:='SOLON- Hoje vou fazer batatas para o jantar...';
							If(fala=3)Then
							  dialogo_quest_1:='SOLON- Pega 100 viks, e vai á loja comprar 10 batatas.';
							If(fala=4)Then
						  	dialogo_quest_1:='KELES- Ok, Já volto.';	
							If(fala=5)Then
						  	dialogo_quest_1:='fim';				  
						 
						Until(dialogo_quest_1='fim');		
				
						dinheiro:=dinheiro+100;
						quest:=quest+1;
						clrscr;
						Gotoxy(14,7);
						Writeln('Você recebeu 100 Viks.');
						Readkey;
						clrscr;
        End; 
        
          posicao[5]:=1;
        
        Repeat
          //       OP5=1   OP5=2   OP5=3   OP5=4   <--  RESPETIVAS CASAS
          passar_de_nivel;
          vida:=bonus_armadura+20;
          
          If(posicao[5]=1)Then
          Begin
            casa_1;
            If(tecla=#72)Then
			      Begin
			        clrscr;  
			        interagir_hot_bar;
			        If(posicao[5]<>1111)Then
							posicao[5]:=1;       
			      End
			      Else
			      
			      Begin
	            If(tecla=#13)Then // [#13 enter] EXECUTAR AÇÃO DE ENTRAR NA CASA 1
	            Begin
	              clrscr;
	              dentro_casa_1;
	              posicao[5]:=1;
	            End;
            End;
            clrscr;
          End;
          
          
          If(posicao[5]=2)Then
          Begin
            casa_2;
            If(tecla=#72)Then
			      Begin
			        clrscr;   
			        interagir_hot_bar;
							If(posicao[5]<>1111)Then
							posicao[5]:=2;       
			      End
			      Else
			      Begin
	            If(tecla=#13)Then // [#13 enter] EXECUTAR AÇÃO DE ENTRAR NA CASA 2
	            Begin
	              clrscr;
	              posicao[7]:=1;
	              Repeat
	              
		              If(posicao[7]=1)Then
								  Begin
								    dentro_casa_2_armas; 
								    If(tecla=#13)Then
										Begin
										  loja_menu_armas ;
										  posicao[7]:=1;
										End;      
								    clrscr;
								  End;
								  
								  If(posicao[7]=2)Then
								  Begin
								    dentro_casa_2_armadura; 
										If(tecla=#13)Then
										Begin
										  loja_menu_armaduras ;
										  posicao[7]:=2;
										End;     
								    clrscr;
								  End;
								  
								  If(posicao[7]=3)Then
								  Begin
								    dentro_casa_2_extras;  
										If(tecla=#13)Then
										Begin
										  loja_menu_extras ;
										  posicao[7]:=3;
										End;     
								    clrscr;
								  End;
								  
								  If(posicao[7]=4)Then
								  Begin
								    dentro_casa_2_menu; 
								    If(tecla=#13)Then
										Begin
										  saida:=1; 
										End;   
								    clrscr;
								  End;
								  
								Until(saida=1);
								  
								saida:=0;
	              posicao[5]:=2;
	            End;
	          End;  
            clrscr;
          End;
          
          
          If(posicao[5]=3)Then
          Begin
            casa_3;
            If(tecla=#72)Then
			      Begin
			        clrscr;      
			        interagir_hot_bar; 
			        If(posicao[5]<>1111)Then
							posicao[5]:=3;      
			      End
			      Else
			      Begin
	            If(tecla=#13)Then // [#13 enter] EXECUTAR AÇÃO DE ENTRAR NA CASA 3
	            Begin
	              clrscr;
	              dentro_casa_3;
	              posicao[5]:=3;
	            End;
	          End;  
            clrscr;
          End;
          
          
          If(posicao[5]=4)Then
          Begin
            casa_4;
            If(tecla=#72)Then
			      Begin
			        clrscr;   
			        interagir_hot_bar;
							If(posicao[5]<>1111)Then 
							posicao[5]:=4;       
			      End
			      Else
			      Begin
	            If(tecla=#13)Then // [#13 enter] EXECUTAR AÇÃO DE ENTRAR NA CASA 4
	            Begin
	              clrscr;
	              dentro_casa_4;
	              posicao[5]:=4;
	            End;  
						End;            
            clrscr;
          End;
          
        Until(posicao[5]=1111);
        
        posicao[2]:=1;
      End;
      
      clrscr;
    End;
    //       OP2=2            OPÇÃO DEFENIÇÕES
    
    If(posicao[2]=2)Then
    Begin
      menu_2_def;
      
      If(tecla=#13)Then
      Begin
        posicao[6]:=1;
        clrscr; 
				Repeat   
				                        // OP6=1         OPÇAO CORES
          If(posicao[6]=1)Then
          Begin
            def_1; 
            
              If(tecla=#13)Then
              Begin
								If(cor='PRETO')Then 
								Begin
									textcolor(0);
									textbackground(15);
									cor:='BRANCO'; 
									posicao[6]:=11;
								End	
		            Else
		            Begin
									If(cor='BRANCO')Then 
									Begin
										textcolor(10);
										textbackground(0);
										cor:='PRETO';
										posicao[6]:=11;
						    	End; 
					      End;
							End;		
					End;
							                 // OP6=2         OPÇAO ADMINISTRADOR
          If(posicao[6]=2)Then
          Begin
            def_2;
						If(tecla=#13)Then
						Begin
						  def_insira_codigo;
						  posicao[6]:=11; 
						End;
					End;	
					                     // OP6=3         OPÇAO VOLTAR AO MENU
					If(posicao[6]=3)Then
          Begin
            def_3;
						If(tecla=#13)Then
						Begin
						  posicao[6]:=11;
						End;
					End;	
            
				Until(posicao[6]=11);
					
				posicao[2]:=2; 
      End;
      
      clrscr;
    End;
    //       OP2=3            OPÇÃO CREDITOS
    If(posicao[2]=3)Then
    Begin
      menu_2_cred;
      
      If(tecla=#13)Then
      Begin
        clrscr;
        creditos;
        posicao[2]:=3;
      End;
      
      clrscr;
    End;
    //       OP2=4            OPÇÃO SAIR DO JOGO
    If(posicao[2]=4)Then
    Begin
      menu_2_sair;      
        If(tecla=#13)Then
        Begin
          posicao[3]:=5;
        End;
        clrscr;
    End;
    
  Until(posicao[3]=5);      // FIM DO JOGO :) SO ACABA AO CLICAR EM SAIR DO JOGO
  
End.













