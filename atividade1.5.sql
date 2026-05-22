SELECT a.nome_aluno, d.nome_disciplina
FROM turma t 
INNER JOIN aluno a ON t.aluno_id_aluno = a.id.aluno
INNER JOIN disciplina d ON t.disciplina_id_disciplina = d.id.disciplina;