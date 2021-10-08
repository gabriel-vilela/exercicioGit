<script type="text/javascript">seta_status(true);</script>
<div class="title-chat">
  <div class="u-info"><i class="fas fa-chevron-left" onclick="seta_status(false)" id="backbtn"></i><img src="<?php $chat = new chat($pdo); echo $chat->dados_user($this->verifica_nomes_chat($explode['1']),"foto")?>"> <?php echo $chat->dados_user($this->verifica_nomes_chat($explode['1']),"nome")?>
  </div>
</div>
<input type="hidden" id="id_post" value="<?php echo $explode['1'];?>" >
<div class="msg_history" id="msghistory">
  <div id="mensagens">
  </div>
</div>
<div class="type_msg">
    <div class="input_msg_write">
      <form method="POST" id="sendmsg">
        <input type="hidden" id="id_chat" value="<?php echo $explode['1'];?>" >
        <input type="text" class="write_msg" name="msg" id="msg" autocomplete="off" placeholder="Digite sua mensagem" />
        <button class="fas fa-microphone-alt mic"  onclick="window.open('https://aps-cc-chat.000webhostapp.com/gravando.html');"></button>
        <button class="fa fa-paper-plane mic" type="submit"></button>
        <input type="hidden" name="env" value="ms">
      </form>
      <?php
          $chat->atualiza_lido($explode['1']);
          //$chat->form_mensagem();
      ?>
    </div>
  </div>
  <script src="../js/script.js"></script>