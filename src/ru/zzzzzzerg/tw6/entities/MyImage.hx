package ru.zzzzzzerg.tw6.entities;

import awe6.interfaces.IKernel;
import awe6.interfaces.IView;
import awe6.interfaces.EKey;
import awe6.core.Entity;

/**
  * @author zzzzzzerg
  */

class MyImage extends Entity
{
  public function new(kernel:IKernel, id:String, view:IView)
  {
    super(kernel, id);
    this.view = view;
  }

  private override function _updater(dt:Int = 0):Void
  {
    super._updater(dt);
    if(_kernel.inputs.keyboard.getIsKeyDown(EKey.RIGHT))
    {
      view.x += 10;
      trace(view.x);
    }
    if(_kernel.inputs.keyboard.getIsKeyDown(EKey.LEFT))
    {
      view.x -= 10;
      trace(view.x);
    }
  }
}
