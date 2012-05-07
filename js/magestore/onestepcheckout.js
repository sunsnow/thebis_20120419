var count_loading = 0;

//check empty fields
function checkEmptyFields(container)
{
	var empty = false;
	if(container.id =='billing-new-address-form') {
		if($('billing:country_id') && $('billing:country_id').value =='') 
			empty = true;
		if($('billing:region_id') && $('billing:region_id').value =='' && $('billing:region_id').style.display !='none') 
			empty = true;
		if($('billing:region') && $('billing:region').value =='' && $('billing:region').style.display !='none') 
			empty = true; 
		if($('billing:postcode') && $('billing:postcode').value =='') 
			empty = true; 
		if($('billing:city') && $('billing:city').value =='') 
			empty = true;
		if($('billing:telephone') && $('billing:telephone').value =='') 
			empty = true;		 
	}
	if(container.id =='shipping-new-address-form') {
		if($('shipping:country_id') && $('shipping:country_id').value =='')
			empty = true;
		if($('shipping:region_id') && $('shipping:region_id').value =='' && $('shipping:region_id').style.display !='none')
			empty = true;
		if($('shipping:region') && $('shipping:region').value =='' && $('shipping:region').style.display !='none')
			empty = true;
		if($('shipping:postcode') && $('shipping:postcode').value =='')
			empty = true;
		if($('shipping:city') && $('shipping:city').value =='')
			empty = true;
		if($('shipping:telephone') && $('shipping:telephone').value =='')
			empty = true;		
	}
	return empty;
}
function check_valid_email(transport) {
	var response = getResponseText(transport);		
	var message = response.message;
	if (message == 'valid') {
		$('email-error-message').update('');
		$('valid_email_address_image').show();
	}
	else if (message == 'invalid'){
		$('valid_email_address_image').hide();
		$('email-error-message').update('<p>Invalid Email Address</p>');
	}
	else if (message == 'exists') {
		$('valid_email_address_image').hide();
		if (show_login_link)
			$('email-error-message').update('<p>Email address already registered. Please <a href="" onclick="showLogin(login_url); return false;">log in</a> or use another email address.</p>');
		else {
			$('email-error-message').update('<p>Email address already registered. Please use another email address.</p>');
		}
	}
}

function getResponseText(transport) {
	if (transport && transport.responseText){
		try{
			response = eval('(' + transport.responseText + ')');
		}
		catch (e) {
			response = {};
		}
	}
	return response;
}

function get_billing_data(parameters) {
	var input_billing_array=$$('input[name^=billing]');
    var select_billing_array=$$('select[name^=billing]');
	var street_count = 0;
	for (var i=0; i < input_billing_array.length; i++) {
		var item = input_billing_array[i];
		if (item.type == 'checkbox') {
			if(item.checked)	{
				parameters[item.name] = item.value;
			}
		}
		else {
			if (item.name == 'billing[street][]') {
				var name = 'billing[street][' + street_count + ']';
				parameters[name] = item.value;
				street_count = street_count + 1;
			}
			else {
				parameters[item.name] = item.value;
			}
		}
	}
	
	var street_count=0;
	for (var i=0; i < select_billing_array.length; i++) {
		var item = select_billing_array[i];
		//data[item.name] = item.value;
		if (item.type == 'checkbox') {
			if(item.checked)	{
				parameters[item.name] = item.value;
			}
		}
		else {
			if (item.name == 'billing[street][]') {
				var name = 'billing[street][' + street_count + ']';
				parameters[name] = item.value;
				street_count = street_count + 1;
			}
			else {
				parameters[item.name] = item.value;
			}
		}
	}
}

function get_shipping_data(parameters) {
	var input_shipping_fields=$$('input[name^=shipping]');
    var select_shipping_fields=$$('select[name^=shipping]');
	var street_count = 0;
	for (var i=0; i < input_shipping_fields.length; i++) {
		var item = input_shipping_fields[i];
		if (item.type == 'checkbox') {
			if(item.checked)	{
				parameters[item.name] = item.value;
			}
		}
		else {
			if (item.name != 'shipping_method') {
				if (item.name == 'shipping[street][]') {
					var name = 'shipping[street][' + street_count + ']';
					parameters[name] = item.value;
					street_count = street_count + 1;
				}
				else {
					parameters[item.name] = item.value;
				}
			}
		}
	}
	
	var street_count = 0;
	for (var i=0; i < select_shipping_fields.length; i++) {
		var item = select_shipping_fields[i];
		//data[item.name] = item.value;
		if (item.type == 'checkbox') {
			if(item.checked)	{
				parameters[item.name] = item.value;
			}
		}
		else {
			if (item.name != 'shipping_method') {
				if (item.name == 'shipping[street][]') {
					var name = 'shipping[street][' + street_count + ']';
					parameters[name] = item.value;
					street_count = street_count + 1;
				}
				else {
					parameters[item.name] = item.value;
				}
			}
		}
	}
}

function showLoading() {
	
}

function save_address_information(save_address_url) {
	var form = $('one-step-checkout-form');
	var shipping_method = $RF(form, 'shipping_method');
	var parameters = {shipping_method: shipping_method};
	
	get_billing_data(parameters);	
	get_shipping_data(parameters);	
	
	var shipping_method_section = $$('div.onestepcheckout-shipping-method-section')[0];
	if(typeof shipping_method_section != 'undefined') {		
		shipping_method_section.update('<div class="ajax-loader1"></div>');
	}
	
	var payment_method_section = $$('div.onestepcheckout-payment-methods')[0];
	payment_method_section.update('<div class="ajax-loader2">&nbsp;</div>');
	
	var review = $('checkout-review-load');
	review.update('<div class="ajax-loader3"></div>');
	
	count_loading = count_loading + 1;
	
	var request = new Ajax.Request(save_address_url, {	
		parameters: parameters,
		onSuccess: function(transport) {
			if(transport.status == 200)	{
				var response = getResponseText(transport);
				count_loading = count_loading - 1;
				if (count_loading == 0) {
					if(typeof shipping_method_section != 'undefined') {	
						shipping_method_section.update(response.shipping_method);
					}
					payment_method_section.update(response.payment_method);
					// show payment form if available
					if($RF(form, 'payment[method]') != null)    {
						try    {
							var payment_method = $RF(form, 'payment[method]');
							$('container_payment_method_' + payment_method).show();
							$('payment_form_' + payment_method).show();
						} catch(err)    {

						}
					}
					review.update(response.review);
				}
			}
		},
		onFailure: ''
	});
}

function save_shipping_method(shipping_method_url, enable_update_payment) {
	if(typeof enable_update_payment == 'undefined')	{
		var enable_update_payment = false;
	}
	
	var form = $('one-step-checkout-form');
	var shipping_method = $RF(form, 'shipping_method');
	var payment_method = $RF(form, 'payment[method]');
	
	//reload payment only if this feature is enabled in admin - show image loading
	var payment_method_section = $$('div.onestepcheckout-payment-methods')[0];
	if (enable_update_payment) {		
		payment_method_section.update('<div class="ajax-loader2">&nbsp;</div>');
	}
	
	//show image loading for review total
	var review = $('checkout-review-load');
	review.update('<div class="ajax-loader3"></div>');
	
	var parameters = {
		shipping_method: shipping_method,
		payment_method: payment_method
	};
	
	//Find payment parameters and include 
	var items = $$('input[name^=payment]', 'select[name^=payment]');
	var names = items.pluck('name');
	var values = items.pluck('value');
	
	for(var x=0; x < names.length; x++)	{
		if(names[x] != 'payment[method]')	{
			parameters[names[x]] = values[x];	
		}
	}
	
	var request = new Ajax.Request(shipping_method_url, {
		method: 'post',
		parameters: parameters,
		onFailure: '',
		onSuccess: function(transport) {
			if(transport.status == 200)	{
				var response = getResponseText(transport);
				if (enable_update_payment) {
					payment_method_section.update(response.payment);
					// show payment form if available
					if($RF(form, 'payment[method]') != null)    {
						try    {
							var payment_method = $RF(form, 'payment[method]');
							$('container_payment_method_' + payment_method).show();
							$('payment_form_' + payment_method).show();
						} catch(err)    {

						}
					}
				}
				review.update(response.review);
			}
		}
	});
	
}

function updateSection(transport) {
	var response = getResponseText(transport);
	if (response.shipping_method) {
		var shipping_method_section = $$('div.onestepcheckout-shipping-method-section')[0];
		if(typeof shipping_method_section != 'undefined') {		
			
		}
	}
	if (response.payment_method) {
	
	}
}

function add_coupon_code(add_coupon_url) {
	var review = $('checkout-review-load');
	review.update('<div class="ajax-loader3"></div>');
	var coupon_code = $('coupon_code_onestepcheckout').value;	
	var parameters = {coupon_code: coupon_code};	
	var request = new Ajax.Request(add_coupon_url, {
		method: 'post',
		onFailure: '',
		parameters: parameters,
		onSuccess: function(transport) {
			var response = getResponseText(transport);
			if (response.error) {				
				review.update(response.review_html);
				$('remove_coupon_code_button').hide();
				alert(response.message);
			}
			else {
				review.update(response.review_html);
				$('remove_coupon_code_button').show();
			}
		}
	});
	
}

function remove_coupon_code(add_coupon_url) {
	var review = $('checkout-review-load');
	review.update('<div class="ajax-loader3"></div>');
	var coupon_code = $('coupon_code_onestepcheckout').value;	
	var parameters = {coupon_code: coupon_code, remove: '1'};	
	var request = new Ajax.Request(add_coupon_url, {
		method: 'post',
		onFailure: '',
		parameters: parameters,
		onSuccess: function(transport) {
			var response = getResponseText(transport);
			if (response.error) {				
				review.update(response.review_html);
			}
			else {
				review.update(response.review_html);
				$('coupon_code_onestepcheckout').value = '';
				$('remove_coupon_code_button').hide();				
			}
		}
	});
}

function setNewAddress(isNew, type, save_address_url) {
	if (isNew) {
		resetSelectedAddress(type);
		$(type + '-new-address-form').show();
	}
	else {
		$(type + '-new-address-form').hide();
	}	
	save_address_information(save_address_url);
}

function resetSelectedAddress(type) {
	var selectElement = $(type + '-address-select')
	if (selectElement) {
		selectElement.value = '';
	}
}

function showLogin(url) {
	TINY.box.show(url, 1, 400, 250, 150);
	return false;
}

function showpwdbox(url) {
	TINY.box.show(url, 1, 400, 250, 150);
	return false;
}

function showTermsAndCondition() {
	TINY.box.show(show_term_condition_url, 1, term_popup_width, term_popup_height, 150);
	return false;
}

function loginProcess(transport) {
	var response = getResponseText(transport);
	if (response.error && response.error != '') {
		$('onestepcheckout-login-error-message').update(response.error);
		$('onestepcheckout-login-error-message').show();
		disableLoginLoading();
	}
	else {
		$('onestepcheckout-login-error-message').hide();
		window.location = window.location;
	}
}

function passwordProcess(transport) {
	var response = getResponseText(transport);
	if (response.success) {
		$('onestepcheckout-password-error-message').hide();
		$('onestepcheckout-password-loading').hide();
		$('onestepcheckout-password-success-message').show();
	}
	else {
		if (response.error && response.error != '') {
			$('onestepcheckout-password-error-message').update(response.error);
			$('onestepcheckout-password-error-message').show();
			disablePassLoading();
		}
	}
}

function showPassLoading() {
	$('onestepcheckout-password-error-message').hide();
	$('osc-forgotpassword-form').hide();
	$('onestepcheckout-password-loading').show();
}

function disablePassLoading() {
	$('osc-forgotpassword-form').show();
	$('onestepcheckout-password-loading').hide();
}


function showLoginLoading() {
	$('onestepcheckout-login-error-message').hide();
	$('onestepcheckout-login-form').hide();
	$('onestepcheckout-login-loading').show();
}

function disableLoginLoading() {
	$('onestepcheckout-login-form').show();
	$('onestepcheckout-login-loading').hide();
}

function change_class_name(element, oldStep, newStep) {
	if(element) {
		element.removeClassName('step_'+oldStep);
		element.addClassName('step_'+newStep);
	}
}

function $RF(el, radioGroup) {
	if($(el).type && $(el).type.toLowerCase() == 'radio') {
		var radioGroup = $(el).name;
		var el = $(el).form;
	} else if ($(el).tagName.toLowerCase() != 'form') {
		return false;
	}

	var checked = $(el).getInputs('radio', radioGroup).find(
		function(re) {return re.checked;}
	);
	return (checked) ? $F(checked) : null;
}

function initWhatIsCvvListeners() {
	$$('.cvv-what-is-this').each(function(element){		
		Event.observe(element, 'click', toggleToolTip);
	});
}