create procedure criar_processo_seletivo()
language SQL
as $$
    INSERT INTO barema(nota_de_corte)
    VALUES (30);

    INSERT INTO item(nome, descricao, tempo_em_dias, barema_id, pre_requisito)
    VALUES ('Bolsista', 'Bolsista VIVA SUS', 2, 2 ,true);

    INSERT INTO setor (nome)
    VALUES ('DCTI');

    INSERT INTO processo_seletivo(hash, titulo, descricao, usuario_id, setor_id)
    VALUES ('DCTI/SRS/VIVASUS','Bolsista TI VIVA SUS', 'Processo Seletivo', 25,2);

    INSERT INTO cargo(nome)
    VALUES ('Bolsista Tecnologia da Informação');

    INSERT INTO vaga(nome, cargo_id, processo_seletivo_id)
    VALUES('Bolsista Tecnologia Informação', 2, 3);
$$;

CALL criar_processo_seletivo();