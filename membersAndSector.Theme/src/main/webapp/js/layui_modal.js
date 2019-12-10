var layuiModal = {
    //可输入模态框
    //title 弹窗标题  value  输入框内容 successFunc 成功回调
    prompt:function(title, value, successFunc){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.prompt({
                formType: 0,
                value: value,
                title: title,
            }, function(value, index, elem){
                successFunc && successFunc(value)
                layer.close(index);
            });
        })
    },
    //询问框
    //msg 提示内容  successFunc 成功回调 若无可不传  failFunc 取消回调  若无可不传
    confirm:function(msg, successFunc, failFunc){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.confirm(msg || '确定删除吗？', {
                btn: ['确定','取消'] //按钮
            }, function(index){
                layer.close(index);
                successFunc && successFunc();
            }, function(index){
                layer.close(index);
                failFunc && failFunc();
            })
        });

    },
    //提示框  msg 提示语 successFunc 成功回调
    alert:function(msg, successFunc){
        layui.use('layer', function(){
            var layer = layui.layer;
            layer.alert(msg,{}, function(index){
                successFunc && successFunc();
                layer.close(index);
            });
        });
    }
}