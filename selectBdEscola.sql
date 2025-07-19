USE BdEscola


SELECT nomeAluno AS Nome, rgAluno AS RG FROM tbAluno WHERE naturalidadeAluno LIKE 'SP'

SELECT nomeAluno AS Nome, rgAluno AS RG FROM tbAluno WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS Curso FROM tbCurso WHERE cargaHorariaCurso > 2000

SELECT nomeAluno AS Nome, rgAluno AS RG FROM tbAluno WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno AS Nome, dataNascimentoAluno AS 'Data de nascimento' FROM tbAluno 
WHERE MONTH(dataNascimentoAluno) = 3

SELECT codAluno AS 'C�digo aluno', dataMatricula AS 'Data matr�cula' FROM tbMatricula
WHERE MONTH(dataMatricula) = 5 

SELECT codAluno AS 'C�digo aluno' FROM tbMatricula
WHERE codTurma = 1

SELECT codAluno AS 'Codigo aluno' FROM tbMatricula
WHERE codTurma = 3

SELECT codAluno AS 'C�digo aluno', nomeAluno AS 'Nome aluno', dataNascimentoAluno AS 'Data nascimento', rgAluno AS RG, naturalidadeAluno AS 'Naturalidade' FROM tbAluno

SELECT codTurma AS 'C�digo', nomeTurma AS 'Nome', horarioTurma AS 'Hor�rio', codCurso AS 'C�digo do curso' FROM tbTurma

SELECT nomeAluno AS Nome, DAY(dataNascimentoAluno) AS 'Dia de Nascimento', MONTH(dataNascimentoAluno) AS 'Mes de nascimento' FROM tbAluno