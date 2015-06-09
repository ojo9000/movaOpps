/**
 * modified by badqiu (badqiu(a)gmail.com)
 * blog: http://badqiu.javaeye.com
 * Project Home: http://code.google.com/p/rapid-validation/
 * Rapid Framework Project Home: http://code.google.com/p/rapid-framework/
 * Version 1.5.1
 */

/*
 * Really easy field validation with Prototype
 * http://tetlaw.id.au/view/blog/really-easy-field-validation-with-prototype
 * Andrew Tetlaw
 * Version 1.5.3 (2006-07-15)
 * 
 * Copyright (c) 2006 Andrew Tetlaw
 * http://www.opensource.org/licenses/mit-license.php
 */

/*
����˵����
1��������֤���ӣ�
    <!--����prototype-->
    <link href="/js/validation/style_min.css" rel="stylesheet" type="text/css" />
    <!--����֤-->
    <script src="/js/validation/prototype_for_validation.js" type="text/javascript"></script>
    <script src="/js/validation/validation_cn.js" type="text/javascript"></script>
    <!--����jquery-->
    <script src="/js/jquery-1.2.6.min.js" type="text/javascript"></script>
    <!--��ҳ-->
    <script src="/js/page.js" type="text/javascript"></script>
    <!--ajax�ύ��-->
    <script src="/js/form.js" type="text/javascript"></script>
    <script src="/js/ajaxsubmit.js" type="text/javascript"></script>
    <!--WdatePicker-->
    <script src="/js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
    <script type="text/javascript">
        function checkform(){
            //��֤��
            if(validateform('queryform')==false)
                    return false;
            //��ʾ�ȴ����ֲ�
            showWaitMask();
            //ajax�ύ��������Ҫ���ŷ���false
            ajaxsubmitform('queryform');
            return false;
        }
    </script>
2�������Ҵ���ľ��飺
    ��������
    1.table����form
    <table><form>
    2.input������p����
    <p><input></p>
    3.table������ֱ��һ��input
    <table><input>
    ��Щ�����Ѿ����ֵĲ�֧�ֵĸ�ʽ��
*/


var ValidationDefaultOptions = function(){};
ValidationDefaultOptions.prototype = {
	onSubmit : false, //�Ƿ����form��submit�¼�
	onReset : true, //�Ƿ����form��reset�¼�
	stopOnFirst : true, //����֤ʱͣ���ڵ�һ����֤�ĵط�,��������֤��ȥ
	immediate : false, //�Ƿ�ʵʱ������ݵĺϷ���
	focusOnError : false, //�Ƿ����ʱ�����ָ���Ƶ�������������
	useTitles : true, //�Ƿ�ʹ��input��title������Ϊ����ʱ����ʾ��Ϣ
	onFormValidate : function(result, form) {return result;},//Form��֤ʱ�Ļص�����,�����޸����յķ��ؽ��
	onElementValidate : function(result, elm) {} //ĳ��input��֤ʱ�Ļص�����
}

var ValidatorDefaultOptions = function(){}
ValidatorDefaultOptions.prototype = {
	ignoreEmptyValue : true, //�Ƿ���Կ�ֵ
	depends : [] //���������
}

//compatible with prototype
if(typeof Prototype != 'undefined' && (typeof $ != 'undefined')) {
	$prototype = $;
}

Validator = Class.create();

Validator.messageSource = {};
Validator.messageSource['zh-cn'] = [
	['validation-failed' , '��֤ʧ��'],
	['required' , '����Ϊ��'],
	['validate-number' , 'ֻ��������'],
	['validate-digits' , 'ֻ��������'],
	['validate-zhengshu' , 'ֻ����������'],
	['validate-alpha' , 'ֻ������ĸ'],
	['validate-alphakong' , 'ֻ������ĸ��ո�'],
	['validate-middlekong' , '��ʽ�����м�Ҫ�ÿո����'],
	['validate-numlowercase' , 'ֻ����Сд��ĸ������'],
	['validate-notnumbegin' , '���������ֿ�ͷ'],
	['validate-alphanum' , 'ֻ������ĸ������'],
	['validate-email' , '��ʽ������ȷ��ʽΪ��Yourname@xxx.com'],
	['validate-emailhead' , '��ʽ������������ȷ���ʼ�ͷ'],
	['validate-url' , '��ʽ����'],
	['validate-currency-dollar' , 'ֻ������Ԫ'],
	['validate-one-required' , '����ѡ��һ��'],
	['validate-integer' , 'ֻ��������'],
	['validate-pattern' , '��ʽ����'],
	['validate-ip','��ʽ������ȷ��ʽΪ192.168.0.1'],
	['min-value' , 'ֵ����С��%s'],
	['max-value' , 'ֵ���ܴ���%s'],
	['min-length' , '���Ȳ���С��%s���ַ�'],
	['max-length', '���Ȳ��ܴ���%s���ַ�'],
	['max-length-chinese', '���Ȳ��ܴ���%s���ַ�'],
	['int-range' , 'ֵ����С��%s���Ҳ��ܴ���%s'],
	['float-range' , 'ֵ����С��%s���Ҳ��ܴ���%s'],
	['length-range' , '���Ȳ���С��%s���ַ����Ҳ��ܴ���%s���ַ�'],
	['equals','ֵ���������º˶�'],
	['less-than','����С��ǰ���ֵ'],
	['less-than-equal','����С�ڻ����ǰ���ֵ'],
	['great-than','�������ǰ���ֵ'],
	['great-than-equal','������ڻ����ǰ���ֵ'],
	['validate-date' , '��ʽ������ȷ��ʽΪ%s�����磺%s'],
	['validate-selection' , '����ѡ��'],
	['validate-file' , function(v,elm,args,metadata) {
		return ValidationUtils.format("�ļ�����Ӧ��Ϊ[%s]����֮һ",[args.join(',')]);
	}],
	//����Դ���е������֤��ʾ��Ϣ
	['validate-before','ֵ���󣬿�ʼ���ڲ��ܴ��ڽ�������'],
	['validate-small','ֵ���󣬿�ʼ������С�ڽ������'],
	['validate-telephone','��ʽ����ֻ����绰���ֻ����ߴ�����룬�绰������ȷ��ʽΪ��+86.05922958888����0592-2958888'],
	['validate-telephone2','��ʽ����ֻ����绰�����ֻ����룬�绰�����ʽΪ+86.05922958888����0592-2958888'],
	['validate-alphanummore','��ʽ����ֻ������ĸ�����֡��ո�Ӣ���ַ����'],
	['validate-ename','��ʽ����ֻ���ÿո�ָ��������2�Σ�ÿ�β�������2����ĸ'],
	['validate-haschinese','��ʽ���󣬱������ٰ���һ������'],
	['validate-haschinesesign','��ʽ���󣬱������ٰ���һ�������ַ�'],
	['validate-nochinesesign','��ʽ���󣬲��ܰ��������ַ�'],
	//δ���
	['validate-nochinesesignbutdot','��ʽ���󣬲��ܰ������ı����ţ�����ȫ�Ǿ�ţ�'],
	['validate-alphanumgang','��ʽ����ֻ�������֡���ĸ�����ӷ�-���'],
	['validate-limitgang','��ʽ����ͷβ����Ϊ���ӷ�-'],
	['validate-alphanumgangdot','��ʽ����ֻ�������֡���ĸ�����ӷ�-�����.���'],
	['validate-limitgangdot','��ʽ�������ӷ����ܺ;��.������һ��'],
	['validate-hasdot','��ʽ�������ٰ���1��'],
	['validate-tongyong','��ʽ����ֻ���ɺ��֡����֡���ĸ��������ӷ�-����Ǹ�̾��!�����'],
	//�й����е������֤��ʾ��Ϣ
	['validate-id-number','��ʽ����������Ϸ������֤����'],
	['validate-chinese','ֻ��������'],
	['validate-phone','��ʽ������ȷ��ʽΪ��+86.05922958888����0592-2958888'],
	['validate-phone-gang','��ʽ������ȷ��ʽΪ��0592-2958888'],
	['validate-mobile-phone','��ʽ������������ȷ���ֻ�����'],
	['validate-zip','��ʽ������������Ч����������'],
	['validate-qq','��ʽ������������Ч��QQ����'],
	['validate-integral','��ʽ������������Ч�Ļ���']
]

//���������ַ�����
String.prototype.ChineseLength=function()
{
        return this.replace(/[^\x00-\xff]/g,"**").length;
}

ValidationUtils = {
	isVisible : function(elm) {
		while(elm && elm.tagName != 'BODY') {
			if(!$prototype(elm).visible()) return false;
			elm = elm.parentNode;
		}
		return true;
	},
	getReferenceForm : function(elm) {
		while(elm && elm.tagName != 'BODY') {
			if(elm.tagName == 'FORM') return elm;
			elm = elm.parentNode;
		}
		return null;
	},
	getInputValue : function(elm) {
		var elm = $prototype(elm);
		if(elm.type.toLowerCase() == 'file') {
			return elm.value;
		}else {
			return $F(elm);
		}
	},
	getElmID : function(elm) {
		return elm.id ? elm.id : elm.name;
	},
	format : function(str,args) {
		args = args || [];
		ValidationUtils.assert(args.constructor == Array,"ValidationUtils.format() arguement 'args' must is Array");
		var result = str
		for (var i = 0; i < args.length; i++){
			result = result.replace(/%s/, args[i]);	
		}
		return result;
	},
	// ͨ��classname���ݵĲ�������ͨ��'-'�ָ���������
	// ����ֵ����һ������singleArgument,��:validate-pattern-/[a-c]/gi,singleArgumentֵΪ/[a-c]/gi
	getArgumentsByClassName : function(prefix,className) {
		if(!className || !prefix)
			return [];
		var pattern = new RegExp(prefix+'-(\\S+)');
		var matchs = className.match(pattern);
		if(!matchs)
			return [];
		var results = [];
		results.singleArgument = matchs[1];
		var args =  matchs[1].split('-');
		for(var i = 0; i < args.length; i++) {
			if(args[i] == '') {
				if(i+1 < args.length) args[i+1] = '-'+args[i+1];
			}else{
				results.push(args[i]);
			}
		}
		return results;
	},
	assert : function(condition,message) {
		var errorMessage = message || ("assert failed error,condition="+condition);
		if (!condition) {
			alert(errorMessage);
			throw new Error(errorMessage);
		}else {
			return condition;
		}
	},
	isDate : function(v,dateFormat) {
		var MONTH = "MM";
	   	var DAY = "dd";
	   	var YEAR = "yyyy";
		var regex = '^'+dateFormat.replace(YEAR,'\\d{4}').replace(MONTH,'\\d{2}').replace(DAY,'\\d{2}')+'$';
		if(!new RegExp(regex).test(v)) return false;

		var year = v.substr(dateFormat.indexOf(YEAR),4);
		var month = v.substr(dateFormat.indexOf(MONTH),2);
		var day = v.substr(dateFormat.indexOf(DAY),2);
		
		var d = new Date(ValidationUtils.format('%s/%s/%s',[year,month,day]));
		return ( parseInt(month, 10) == (1+d.getMonth()) ) && 
					(parseInt(day, 10) == d.getDate()) && 
					(parseInt(year, 10) == d.getFullYear() );		
	},
	//document: http://ajaxcn.org/space/start/2006-05-15/2
	fireSubmit: function(form) {
	    var form = $prototype(form);
	    if (form.fireEvent) { //for ie
	    	if(form.fireEvent('onsubmit'))
	    		form.submit();
	    } else if (document.createEvent) { // for dom level 2
			var evt = document.createEvent("HTMLEvents");
	      	//true for can bubble, true for cancelable
	      	evt.initEvent('submit', false, true); 
	      	form.dispatchEvent(evt);
	    }
 	},
 	getLanguage : function() {
 		var lang = null;
		if (typeof navigator.userLanguage == 'undefined')
			lang = navigator.language.toLowerCase();
		else
			lang = navigator.userLanguage.toLowerCase();
 		return lang;
 	},
 	getMessageSource : function() {
 		var lang = ValidationUtils.getLanguage();
 		var messageSource = Validator.messageSource['zh-cn'];
		if(Validator.messageSource[lang]) {
			//��������Ҳ��������ʾ
			//messageSource = Validator.messageSource[lang];
		}
		var results = {};
		for(var i = 0; i < messageSource.length; i++) {
			results[messageSource[i][0]] = messageSource[i][1];
		}
		return results;
 	},
 	getI18nMsg : function(key) {
 		return ValidationUtils.getMessageSource()[key];
 	}
}

Validator.prototype = {
	initialize : function(className, test, options) {
		//ʹ��var valid = new Validation("form");������֤�����ô˲���
		this.options = Object.extend(new ValidatorDefaultOptions(), options || {});
		this._test = test ? test : function(v,elm){ return true };
		this._error = ValidationUtils.getI18nMsg(className) ? ValidationUtils.getI18nMsg(className) : ValidationUtils.getI18nMsg('validation-failed');
		this.className = className;
		this._dependsTest = this._dependsTest.bind(this);
		this.testAndGetError = this.testAndGetError.bind(this);
		this.testAndGetDependsError = this.testAndGetDependsError.bind(this);
	},
	_dependsTest : function(v,elm) {
		if(this.options.depends && this.options.depends.length > 0) {
			var dependsResult = $A(this.options.depends).all(function(depend){
				return Validation.get(depend).test(v,elm);
			});
			return dependsResult;
		}
		return true;
	},
	test : function(v, elm) {
		if(!this._dependsTest(v,elm))
			return false;
		if(!elm) elm = {}
		var isEmpty = (this.options.ignoreEmptyValue && ((v == null) || (v.length == 0)));
		return  isEmpty || this._test(v,elm,ValidationUtils.getArgumentsByClassName(this.className,elm.className),this);
	},
	testAndGetDependsError : function(v,elm) {
		var depends = this.options.depends;
		if(depends && depends.length > 0) {
			var dependsError = null;
			for(var i = 0; i < depends.length; i++) {
				var dependsError = Validation.get(depends[i]).testAndGetError(v,elm);
				if(dependsError) return dependsError;
			}
		}
		return null;
	},	
	testAndGetError : function(v, elm,useTitle) {
		var dependsError = this.testAndGetDependsError(v,elm);
		if(dependsError) return dependsError;
		
		if(!elm) elm = {}
		var isEmpty = (this.options.ignoreEmptyValue && ((v == null) || (v.length == 0)));
		var result = isEmpty || this._test(v,elm,ValidationUtils.getArgumentsByClassName(this.className,elm.className),this);
		if(!result) return this.error(v,elm,useTitle);
		return null;
	},
	error : function(v,elm,useTitle) {
		var args  = ValidationUtils.getArgumentsByClassName(this.className,elm.className);
		var error = this._error;
		if(typeof error == 'string') {
			if(v) args.push(v.ChineseLength());
			error = ValidationUtils.format(this._error,args);
		}else if(typeof error == 'function') {
			error = error(v,elm,args,this);
		}else {
			alert('property "_error" must type of string or function,current type:'+typeof error+" current className:"+this.className);
		}
		if(!useTitle) useTitle = elm.className.indexOf('useTitle') >= 0;
		return useTitle ? ((elm && elm.title) ? elm.title : error) : error;
	}
}

var Validation = Class.create();

Validation.prototype = {
	initialize : function(form, options){
		this.options = Object.extend(new ValidationDefaultOptions(), options || {});
		this.form = $prototype(form);
		var formId =  ValidationUtils.getElmID($prototype(form));
		Validation.validations[formId] = this;
		if(this.options.onSubmit) Event.observe(this.form,'submit',this.onSubmit.bind(this),false);
		if(this.options.onReset) Event.observe(this.form,'reset',this.reset.bind(this),false);
		if(this.options.immediate) {
			var useTitles = this.options.useTitles;
			var callback = this.options.onElementValidate;
			var elements = $A(Form.getElements(this.form));
			for(var i = 0; i < elements.length; i++) {
				var input = elements[i];
				Event.observe(input, 'blur', function(ev) { Validation.validateElement(Event.element(ev),{useTitle : useTitles, onElementValidate : callback}); });
			}
		}
	},
	onSubmit :  function(ev){
		if(!this.validate()) Event.stop(ev);
	},
	validate : function() {
		var result = true;
		var useTitles = this.options.useTitles;
		var callback = this.options.onElementValidate;
		if(this.options.stopOnFirst) {
			var elements = $A(Form.getElements(this.form));
			for(var i = 0; i < elements.length; i++) {
				var elm = elements[i];
				result = Validation.validateElement(elm,{useTitle : useTitles, onElementValidate : callback});
				if(!result) break;
			}
		} else {
			var elements = $A(Form.getElements(this.form));
			for(var i = 0; i < elements.length; i++) {
				var elm = elements[i];
				if(!Validation.validateElement(elm,{useTitle : useTitles, onElementValidate : callback})) {
					result = false;
				}
			}
		}
		
		if(!result && this.options.focusOnError) {
			var first = Form.getElements(this.form).findAll(function(elm){return $prototype(elm).hasClassName('validation-failed')})[0];
			if(first.select) first.select(); 
			first.focus();
		}
		return this.options.onFormValidate(result, this.form);
	},
	reset : function() {
		var elements = $A(Form.getElements(this.form))
		for(var i = 0; i < elements.length; i++)
			Validation.reset(elements[i]);
	}
}

Object.extend(Validation, {
	validateElement : function(elm, options){
		options = Object.extend({
			useTitle : false,
			onElementValidate : function(result, elm) {}
		}, options || {});
		elm = $prototype(elm);
		var cn = $A(elm.classNames());
		for(var i = 0; i < cn.length; i++) {
			var value = cn[i];
			var test = Validation.test(value,elm,options.useTitle);
			options.onElementValidate(test, elm);
			if(!test) return false;
		}
		return true;
	},
	newErrorMsgAdvice : function(name,elm,errorMsg) {
		var advice = '<div class="validation-advice" id="advice-' + name + '-' + ValidationUtils.getElmID(elm) +'" style="display:none">' + errorMsg + '</div>'
		switch (elm.type.toLowerCase()) {
			case 'checkbox':
			case 'radio':
				var p = elm.parentNode;
				if(p) {
					new Insertion.Bottom(p, advice);
				} else {
					new Insertion.After(elm, advice);
				}
				break;
			default:
				new Insertion.After(elm, advice);
	    }
		advice = $prototype('advice-' + name + '-' + ValidationUtils.getElmID(elm));
		return advice;
	},
	showErrorMsg : function(name,elm,errorMsg) {
		var elm = $prototype(elm);
		//����class����"alertname-����"����ȡ���������
		var classes = $A(elm.classNames());
		var alertname = "��������";
		for(var i = 0; i < classes.length; i++) {
			var value = classes[i];
			if(value.substring(0,"alertname-".length)=="alertname-")
				alertname = value.substring("alertname-".length);
		}
		//�����alertname-none����ôֱ����ʾ������Ϣ������ָ�����ĸ������Ĵ�
		if(alertname=="none")
			alert(errorMsg);
		else
			alert(alertname+errorMsg);
		/*
		if(typeof Tooltip != 'undefined') {
			if (!elm.tooltip) {
				elm.tooltip = new Tooltip(elm, {backgroundColor:"#FC9", borderColor:"#C96", textColor:"#000", textShadowColor:"#FFF"});
			}dd
			elm.tooltip.content = errorMsg;
		}else {
			var prop = Validation._getAdviceProp(name);
			var advice = Validation.getAdvice(name, elm);
			if(!elm[prop]) {
				if(!advice) {
					advice = Validation.newErrorMsgAdvice(name,elm,errorMsg);
				}
			}
			if(advice && !advice.visible()) {
				if(typeof Effect == 'undefined') {
					advice.style.display = '';
				} else {
					new Effect.Appear(advice, {duration : 1 });
				}			
			}
			advice.innerHTML = errorMsg;
			elm[prop] = true;
		}
		*/
		elm.removeClassName('validation-passed');
		elm.addClassName('validation-failed');
	},
	hideErrorMsg : function(name,elm) {
		var elm = $prototype(elm);
		if(typeof Tooltip != 'undefined') {
			if (elm.tooltip) {
				elm.tooltip.stop();
				elm.tooltip = false;
			}
		}else {
			var prop = Validation._getAdviceProp(name);
			var advice = Validation.getAdvice(name, elm);
			if(advice && elm[prop]) {
				if(typeof Effect == 'undefined')
					advice.hide()
				else 
					new Effect.Fade(advice, {duration : 1 });
			}
			elm[prop] = false;
		}
		
		elm.removeClassName('validation-failed');
		elm.addClassName('validation-passed');
	},
	_getAdviceProp : function(validatorName) {
		return '__advice'+validatorName;
	},
	test : function(name, elm, useTitle) {
		var v = Validation.get(name);
		var errorMsg = null;
		if(ValidationUtils.isVisible(elm)) 
			errorMsg = v.testAndGetError(ValidationUtils.getInputValue(elm),elm,useTitle);
		if(errorMsg) {
			Validation.showErrorMsg(name,elm,errorMsg);
			return false;
		} else {
			Validation.hideErrorMsg(name,elm);
			return true;
		}
	},
	getAdvice : function(name, elm) {
		return $prototype('advice-' + name + '-' + ValidationUtils.getElmID(elm)) || $prototype('advice-' + ValidationUtils.getElmID(elm));
	},
	reset : function(elm) {
		elm = $prototype(elm);
		var cn = $A(elm.classNames());
		for(var i = 0; i < cn.length; i++) {
			var value = cn[i];
			var prop = Validation._getAdviceProp(value);
			if(elm[prop]) {
				var advice = Validation.getAdvice(value, elm);
				advice.hide();
				elm[prop] = '';
			}
			elm.removeClassName('validation-failed');
			elm.removeClassName('validation-passed');			
		}
	},
	add : function(className, test, options) {
		var nv = {};
		var testFun = test;
		if(test instanceof RegExp)
			testFun = function(v,elm,args,metadata){ return test.test(v); }
		nv[className] = new Validator(className, testFun, options);
		Object.extend(Validation.methods, nv);
	},
	addAllThese : function(validators) {
		var validators = $A(validators);
		for(var i = 0; i < validators.length; i++) {
			var value = validators[i];
			Validation.add(value[0], value[1], (value.length > 2 ? value[2] : {}));
		}
	},
	get : function(name) {
		var resultMethodName;
		for(var methodName in Validation.methods) {
			if(name == methodName) {
				resultMethodName = methodName;
				break;
			}
			if(name.indexOf(methodName) >= 0) {
				resultMethodName = methodName;
			}
		}
		return Validation.methods[resultMethodName] ? Validation.methods[resultMethodName] : new Validator();
	},
	$ : function(formId) {
		return Validation.validations[formId];
	},
	methods : {},
	validations : {}
});

Validation.addAllThese([
	['required', function(v) {
				return !((v == null) || (v.length == 0) || /^[\s|\u3000]+$/.test(v));
			},{ignoreEmptyValue:false}],
	['validate-number', function(v) {
				return (!isNaN(v) && !/^\s+$/.test(v));
			}],
	['validate-digits', function(v) {
				return !/[^\d]/.test(v);
			}],
	['validate-zhengshu', function(v) {
				return /^\s*(([+]?\d+(\.0+)?))?\s*$/.test(v);
			}],
	['validate-alphanum', function(v) {
				return !/\W/.test(v)
			}],
	['validate-one-required', function (v,elm) {
				var p = elm.parentNode;
				var options = p.getElementsByTagName('INPUT');
				return $A(options).any(function(elm) {
					return $F(elm);
				});
			},{ignoreEmptyValue : false}],
			
	['validate-digits',/^[\d]+$/],		
	['validate-alphanum',/^[a-zA-Z0-9]+$/],		
	['validate-alphanummore',/^[\r\na-zA-Z0-9 \~\!\@\#\$\%\^\&\*\(\)\_\+\|\}\{\"\:\?\>\<\/\.\,\;\'\[\]\\\=\-\`]+$/],		
	['validate-ename',/^(.*[a-zA-Z]{2}.*)( +.*[a-zA-Z]{2}.*)+$/],		
	['validate-alpha',/^[a-zA-Z]+$/],
	['validate-alphakong',/^[a-zA-Z ]+$/],
	['validate-middlekong',/^\S+ \S+$/],
	['validate-numlowercase',/^[a-z0-9]+$/], //chenyuanyuan added it 
	['validate-notnumbegin',/^[^\d].*$/], //chenyuanyuan added it 
	//['validate-email',/^\w{1,}[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/],
	['validate-email',/^[a-z0-9A-Z-_.]{1,}[@][\w\-]{1,}([.]([\w\-]{1,})){1,3}$/],
	['validate-emailhead',/^\w{1,}$/],
	['validate-url',/^((http|https|ftp):\/\/)?([A-Z0-9][A-Z0-9_-]*)(\.[A-Z0-9][A-Z0-9_-]*)+$/i],
	// [$]1[##][,###]+[.##]
	// [$]1###+[.##]
	// [$]0.##
	// [$].##
	['validate-currency-dollar',/^\$?\-?([1-9]{1}[0-9]{0,2}(\,[0-9]{3})*(\.[0-9]{0,2})?|[1-9]{1}\d*(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|(\.[0-9]{1,2})?)$/]
]);

//custom validate start

Validation.addAllThese([
	/**
	 * Usage : equals-$otherInputId
	 * Example : equals-username or equals-email etc..
	 */
	['equals', function(v,elm,args,metadata) {
				return $F(args[0]) == v;
			},{ignoreEmptyValue:false}],
	/**
	 * Usage : less-than-$otherInputId
	 */
	['less-than', function(v,elm,args,metadata) {
				if(Validation.get('validate-number').test(v) && Validation.get('validate-number').test($F(args[0])))
					return parseFloat(v) < parseFloat($F(args[0]));
				return v < $F(args[0]);
			}],
	/**
	 * Usage : less-than-equal-$otherInputId
	 */
	['less-than-equal', function(v,elm,args,metadata) {
				if(Validation.get('validate-number').test(v) && Validation.get('validate-number').test($F(args[0])))
					return parseFloat(v) <= parseFloat($F(args[0]));
				return v < $F(args[0]) || v == $F(args[0]);
			}],		
	/**
	 * Usage : great-than-$otherInputId
	 */
	['great-than', function(v,elm,args,metadata) {
				if(Validation.get('validate-number').test(v) && Validation.get('validate-number').test($F(args[0])))
					return parseFloat(v) > parseFloat($F(args[0]));
				return v > $F(args[0]);
			}],
	/**
	 * Usage : great-than-equal-$otherInputId
	 */
	['great-than-equal', function(v,elm,args,metadata) {
				if(Validation.get('validate-number').test(v) && Validation.get('validate-number').test($F(args[0])))
					return parseFloat(v) >= parseFloat($F(args[0]));
				return v > $F(args[0]) || v == $F(args[0]);
			}],			
	/*
	 * Usage: min-length-$number
	 * Example: min-length-10
	 */
	['min-length',function(v,elm,args,metadata) {
		return v.ChineseLength() >= parseInt(args[0]);
	}],
	/*
	 * Usage: max-length-$number
	 * Example: max-length-10
	 */
	['max-length',function(v,elm,args,metadata) {
		return v.ChineseLength() <= parseInt(args[0]);
	}],
	['max-length-chinese',function(v,elm,args,metadata) {
		return v.length <= parseInt(args[0]);
	}],
	/*
	 * Usage: validate-file-$type1-$type2-$typeX
	 * Example: validate-file-png-jpg-jpeg
	 */
	['validate-file',function(v,elm,args,metadata) {
		return $A(args).any(function(extentionName) {
			return new RegExp('\\.'+extentionName+'$','i').test(v);
		});
	}],
	/*
	 * Usage: float-range-$minValue-$maxValue
	 * Example: -2.1 to 3 = float-range--2.1-3
	 */
	['float-range',function(v,elm,args,metadata) {
		return (parseFloat(v) >= parseFloat(args[0]) && parseFloat(v) <= parseFloat(args[1]))
	},{depends : ['validate-number']}],
	/*
	 * Usage: int-range-$minValue-$maxValue
	 * Example: -10 to 20 = int-range--10-20
	 */
	['int-range',function(v,elm,args,metadata) {
		return (parseInt(v) >= parseInt(args[0]) && parseInt(v) <= parseInt(args[1]))
	},{depends : ['validate-integer']}],
	/*
	 * Usage: length-range-$minLength-$maxLength
	 * Example: 10 to 20 = length-range-10-20
	 */
	['length-range',function(v,elm,args,metadata) {
		return (v.ChineseLength() >= parseInt(args[0]) && v.ChineseLength() <= parseInt(args[1]))
	}],
	/*
	 * Usage: max-value-$number
	 * Example: max-value-10
	 */
	['max-value',function(v,elm,args,metadata) {
		return parseFloat(v) <= parseFloat(args[0]);
	},{depends : ['validate-number']}],
	/*
	 * Usage: min-value-$number
	 * Example: min-value-10
	 */
	['min-value',function(v,elm,args,metadata) {
		return parseFloat(v) >= parseFloat(args[0]);
	},{depends : ['validate-number']}],
	/*
	 * Usage: validate-pattern-$RegExp
	 * Example: <input id='sex' class='validate-pattern-/^[fm]$/i'>
	 */
	['validate-pattern',function(v,elm,args,metadata) {
		return eval('('+args.singleArgument+'.test(v))');
	}],
	/*
	 * Usage: validate-ajax-$url
	 * Example: <input id='email' class='validate-ajax-http://localhost:8080/validate-email.jsp'>
	 */
	['validate-ajax',function(v,elm,args,metadata) {
		var form = ValidationUtils.getReferenceForm(elm);
		var params = (form ? Form.serialize(form) : Form.Element.serialize(elm));
		params += ValidationUtils.format("&what=%s&value=%s",[elm.name,encodeURIComponent(v)]);
		var request = new Ajax.Request(args.singleArgument,{
			parameters : params,
			asynchronous : false,
			method : "get"
		});
		
		var responseText = request.transport.responseText;
		if("" == responseText.strip()) return true;
		metadata._error = responseText;
		return false;
	}],
	/*
	 * Usage: validate-dwr-${service}.${method}
	 * Example: <input id='email' class='validate-dwr-service.method'>
	 */
	['validate-dwr',function(v,elm,args,metadata) {
		var result = false;
		var callback = function(methodResult) {
			if(methodResult) 
				metadata._error = methodResult;
			else 
				result = true;
		}
		var call = args.singleArgument+"('"+v+"',callback)";
		DWREngine.setAsync(false);
		eval(call);
		DWREngine.setAsync(true);
		return result;
	}],
	/*
	 * Usage: validate-buffalo-${service}.${method}
	 * Example: <input id='email' class='validate-buffalo-service.method'>
	 */
	['validate-buffalo',function(v,elm,args,metadata) {
		var result = false;
		var callback = function(reply) {
			if(replay.getResult()) 
				metadata._error = replay.getResult();
			else 
				result = true;
		}
		if(!BUFFALO_END_POINT) alert('not found "BUFFALO_END_POINT" variable');
		var buffalo = new Buffalo(BUFFALO_END_POINT,false);
		buffalo.remoteCall(args.singleArgument,v,callback);
		return result;
	}],
	/*
	 * Usage: validate-date-$dateFormat or validate-date($dateFormat default is yyyy-MM-dd)
	 * Example: validate-date-yyyy/MM/dd
	 */
	['validate-date', function(v,elm,args,metadata) {
			var dateFormat = args.singleArgument || 'yyyy-MM-dd';
			metadata._error = ValidationUtils.format(ValidationUtils.getI18nMsg(metadata.className),[dateFormat,dateFormat.replace('yyyy','2006').replace('MM','03').replace('dd','12')]);
			return ValidationUtils.isDate(v,dateFormat);
		}],
	['validate-selection', function(v,elm,args,metadata) {
			return elm.options ? elm.selectedIndex > 0 : !((v == null) || (v.length == 0));
		}],	
	['validate-integer',/^[-+]?[1-9]\d*$|^0$/],
	['validate-ip',/^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/],
	/**
	 * Usage : validate-before-$otherInputId
	 */
	['validate-before', function(v,elm,args,metadata) {
				if(($F(args[0]).length == null)||($F(args[0]).length == 0))
					return true;
				return v < $F(args[0]) || v == $F(args[0]);
			}],	
	/**
	 * Usage : validate-small-$otherInputId
	 */
	['validate-small', function(v,elm,args,metadata) {
				if(($F(args[0]).length == null)||($F(args[0]).length == 0))
					return true;
				if(Validation.get('validate-number').test(v) && Validation.get('validate-number').test($F(args[0])))
					return parseFloat(v) <= parseFloat($F(args[0]));
				return v < $F(args[0]) || v == $F(args[0]);
			}],	
	['validate-telephone',/(^\+86\.\d{3,5}\d{6,8}$)|(^\d{3,5}-\d{6,8}$)|(^[1][3458][0-9]{9}$)/],
	['validate-telephone2',/(^\+86\.\d{3,5}\d{6,8}$)|(^\d{3,5}-\d{6,8}$)|(^[1][3458][0-9]{9}$)/],
	/*
	 * �������֣����������ı�㣩
	 */
	['validate-haschinese',/[\u4E00-\u9FA5]/],
	/*
	 * ���������ַ����������ı�㣩
	 */
	['validate-haschinesesign',/[^\x00-\xff]/],
	/*
	 * �����������ַ�
	 */
	['validate-nochinesesign', function(v,elm,args,metadata) {
			if(/[^\x00-\xff]/.test(v)){
				return false;
			}
			return true;
		}],
	['validate-id-number',function(v,elm,args,metadata) {
		if(!(/^\d{17}(\d|x)$/i.test(v) || /^\d{15}$/i.test(v))) return false;
		var provinceCode = parseInt(v.substr(0,2));
		if((provinceCode < 11) || (provinceCode > 91)) return false;
		var forTestDate = v.length == 18 ? v : v.substr(0,6)+"19"+v.substr(6,15);
		var birthday = forTestDate.substr(6,8);
		if(!ValidationUtils.isDate(birthday,'yyyyMMdd')) return false;
		if(v.length == 18) {
			v = v.replace(/x$/i,"a");
			var verifyCode = 0;
			for(var i = 17;i >= 0;i--)   
            	verifyCode += (Math.pow(2,i) % 11) * parseInt(v.charAt(17 - i),11);
            if(verifyCode % 11 != 1) return false;
		}
		return true;
	}],
	['validate-chinese',/^[\u4e00-\u9fa5]+$/],
	['validate-phone',/(^\+86\.\d{3,5}\d{6,8}$)|(^\d{3,5}-\d{6,8}$)/],
	['validate-phone-gang',/^\d{3,5}-\d{6,8}$/],
	['validate-mobile-phone',/(^0?[1][3458][0-9]{9}$)/],
	['validate-zip',/^\d{6}$/],
	['validate-qq',/^[1-9]\d{4,12}$/],
	['validate-integral',/^[+-]?\d+(.\d{1,2})?$/]
]);


Validation.autoBind = function() {
	 var forms = $A(document.getElementsByClassName('required-validate'));
	 for(var i = 0; i < forms.length; i++) {
	 	var form = forms[i];
		//ʹ��form��class="required-validate"������֤�����ô˲���
	 	var validation = new Validation(form,{immediate:false,useTitles:true,stopOnFirst:true});
		Event.observe(form,'reset',function() {validation.reset();},false);
	 }
};

Event.observe(window,'load',Validation.autoBind,false);
function validateform(formid){
    var valid = new Validation(formid);
    if(valid.validate()==false){
        return false;
    }else{
        return true;
    }
}
