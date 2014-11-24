package ru.zzzzzzerg.tw6.scenes;

import awe6.interfaces.EAgenda;
import ru.zzzzzzerg.tw6.entities.MyImage;
/**
 * ...
 * @author zzzzzzerg
 */

class Game extends AScene 
{
  override private function _init():Void 
{
    super._init();
    isPauseable = true;
    // extend / addentities

    var mech = new MyImage(_kernel, "mech", _assetManager.mech);
    addEntity(mech, EAgenda.ALWAYS, true, 5);

    _title.text = "GAME";
  }

}
