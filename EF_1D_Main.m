
%=========================================================================
% Codigo Baseado no MEF - problema 1D
% Data: 11-03-2018
% Autores: Jaime Castañeda Barbosa
%========================================================================
clc;
clear all;

%=======================================================================
% PREPROCESSAMENTO

Pe = 2;
L  = 1;
Nele = 8;


% Calcula numero de nos e DomNodeID
[nnodes, DomNodeID] = GlobalPointer(Nele);

% Geracao de Malha
[x, dx] = Mesh(L, nnodes, Nele, DomNodeID);

%=======================================================================
% RESOLUCAO DO PROBLEMA
% Vetor com a solucao aproximada
[U] = Solution(Pe, nnodes, Nele, DomNodeID, dx)

%=======================================================================
% POS-PROCESSAMENTO
% Vetor com a solucao exata
[Uex] = Exata(Pe,x, nnodes)

% Calculo do erro da solucao
Erro = (U - Uex)./(U + 1e-10);

figure
plot(x,U,'bo',x,Uex,'r')
xlabel('x')
ylabel('U(x)')
title('Solucao')

figure
plot(x,Erro)
xlabel('x')
ylabel('Erro relativo(x)')
title('Erro relativo')

