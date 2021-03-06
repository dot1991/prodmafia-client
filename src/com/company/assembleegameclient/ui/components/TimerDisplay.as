package com.company.assembleegameclient.ui.components {
import flash.display.Sprite;

import kabam.lib.util.TimeWriter;
import kabam.rotmg.text.view.TextFieldDisplayConcrete;
import kabam.rotmg.text.view.stringBuilder.StaticStringBuilder;

public class TimerDisplay extends Sprite {


    public function TimerDisplay(_arg_1:TextFieldDisplayConcrete) {
        stringifier = new TimeWriter();
        super();
        this.initTextField(_arg_1);
    }
    private var _textField:TextFieldDisplayConcrete;
    private var stringifier:TimeWriter;

    public function update(_arg_1:Number):void {
        this._textField.setStringBuilder(new StaticStringBuilder(this.stringifier.parseTime(_arg_1)));
    }

    private function initTextField(_arg_1:TextFieldDisplayConcrete):void {
        var _local2:* = _arg_1;
        this._textField = _local2;
        addChild(_local2);
    }
}
}
