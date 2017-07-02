<?php

namespace wingon;

use pocketmine\command\Command;
use pocketmine\command\CommandSender;
use pocketmine\event\Listener;
use pocketmine\event\player\PlayerRespawnEvent;
use pocketmine\Player;
use pocketmine\plugin\PluginBase;
use pocketmine\Server;
use pocketmine\utils\TextFormat;

class Main extends PluginBase implements Listener{
	
	public function onEnable(){
		$this->getServer()->getPluginManager()->registerEvents($this, $this);
		$this->getLogger()->info(TextFormat::GREEN . "[FML] §cĐã hoạt động!");
	}
	
	public function onDisable(){
		$this->getLogger()->info(TextFormat::RED . "[FML] Đã dừng!");
	}
	
	public function onCommand(CommandSender $sender, Command $command, $label, array $args){
		switch($command->getName()){
			case "Wing":
               $sender->sendMessage(TextFormat:: GREEN "§a+=+=+=+§8§l[§bLệnh §cWing§8]§r§a+=+=+=+"));
               $sender->sendMessage(TextFormat:: GREEN "§a- §c/wing help để xem hướng dẩn"));
               $sender->sendMessage(TextFormat:: GREEN "§a- §c/wing on để bật cánh"));
               $sender->sendMessage(TextFormat:: GREEN "§a- §c/wing off để tắt cánh"));
               $sender->sendMessage(TextFormat:: GREEN "§a- §c/wing list để xem list cánh"));
