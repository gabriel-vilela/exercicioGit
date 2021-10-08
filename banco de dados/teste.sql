--
-- Estrutura da tabela `chats`
--

CREATE TABLE `chats` (
  `id` int(20) NOT NULL,
  `id_de` varchar(200) NOT NULL,
  `id_para` varchar(200) NOT NULL,
  `lastupdate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `chats`
--

INSERT INTO `chats` (`id`, `id_de`, `id_para`, `lastupdate`) VALUES
(5, 'gabriel', 'lucas', '23-05-2019 13:39:35'),
(6, 'gabriel', 'gustavo', '25-05-2019 13:10:55'),
(8, 'lucas', 'gustavo', '25-05-2019 13:03:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `id_de` varchar(200) NOT NULL,
  `id_chat` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `data` varchar(200) NOT NULL,
  `lido` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_de`, `id_chat`, `mensagem`, `data`, `lido`) VALUES
(1, 'gabriel', 5, 'Eai, tudo bem?', '18-05-2019 14:07:10', 1),
(2, 'lucas', 5, 'Eai... Sim, e você?', '18-05-2019 14:08:10', 1),
(5, 'gabriel', 6, 'Oi', '18-05-2019 14:09:10', 1);

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sexo` int(11) NOT NULL DEFAULT '0',
  `senha` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `email`, `sexo`, `senha`, `foto`, `status`) VALUES
(1, 'Gabriel Vilela', 'gabriel', 'gabrielvilela79@gmail.com', 1, '123', 'images/uploadsnophoto-ce9ebfea85cbfbb4fd42fc2915d12fca8518a1535318fb75d71426ccd3d81e4a.png', '10-05-2021 13:10:04'),
(2, 'Lucas Augusto', 'lucas', 'lucasaugusto@gmail.com', 1, '123', 'https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?fit=256%2C256&quality=100&ssl=1', '10-05-2021 12:28:51'),
(3, 'Gustavo', 'gustavo', 'gustavo@gmail.com', 0, '123', '', '10-05-2021 13:23:49');

--
-- Indexes para tabelas
--

--
-- Indexes para tabela `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para as tabelas
--

--
-- AUTO_INCREMENT para tabela `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT para tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT para tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
