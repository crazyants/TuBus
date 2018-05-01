﻿function vPerfil() {

    this.serviceUsuario = 'Usuario/Current';
    this.serviceContrasena = 'Usuario/UpdateContrasena';

    this.ctrlActions = new ControlActions();

    this.Retrieve = function() {
        var jqxhr = $.get({
            url: this.ctrlActions.GetUrlApiService(this.serviceUsuario),
            headers: { 'Authorization': auth.GetAccessToken() }
        }).done(function (response) {
            var vperfil = new vPerfil();
            vperfil.BindFieldsUsuario(response.Data);
            vperfil.BindFieldsContrasena(response.Data);
        }).fail(function (response) {
            var data = response.responseJSON;
            var ctrlActions = new ControlActions();
            ctrlActions.ShowMessage('E', data.ExceptionMessage);
            console.log(data);
        });
    }

    this.UpdateUsuario = function () {

        if (!$("#frmPerfilUsuario").valid()) {
            this.ctrlActions.ShowMessage('E', "Por favor verifique los campos señalados.");
        } else {
            var data = {};
            data = this.ctrlActions.GetDataForm('frmPerfilUsuario');
            //Hace el put al API
            this.ctrlActions.PutToAPI(this.serviceUsuario, data, function () {
                window.location.replace("/Usuario");
            });
        }
    }

    this.UpdateContrasena = function () {
        if (!$("#frmContrasena").valid()) {
            this.ctrlActions.ShowMessage('E', "Por favor verifique los campos señalados.");
        } else {
            var data = {};
            data = this.ctrlActions.GetDataForm('frmContrasena');
            //Hace el put al API
            this.ctrlActions.PutToAPI(this.serviceContrasena, data, function () {
                window.location.replace("/Usuario");
            });
        }
    }

    this.BindFieldsUsuario = function (data) {
        this.ctrlActions.BindFields('frmPerfilUsuario', data);
    }

    this.BindFieldsContrasena = function (data) {
        this.ctrlActions.BindFields('frmContrasena', data);
    }

    this.FillComboBoxes = function () {
        this.ctrlActions.FillComboBox("Role/ObtenerRoles", "cbRole", "RoleId", "RoleId");
        this.ctrlActions.FillComboBox("Terminal/ObtenerTerminales", "cbTerminal", "Id", "TerminalName");
    }
}

//ON DOCUMENT READY
$(document).ready(function () {
    var vperfil = new vPerfil();
    vperfil.FillComboBoxes();
    vperfil.Retrieve();

    $("#frmPerfilUsuario").validate({
        rules: {
            Identificacion: {
                required: true,
                identificacion: true
            },
            Nombre: {
                required: true
            },
            Apellidos: {
                required: true
            },
            FechaNacimiento: {
                required: true,
                date: true,
                edad: true
            },
            Telefono: {
                required: true,
                rangelength: [8, 8],
                number: true
            },
            SmsNotificationsMin: {
                required: true,
                minlength: 3,
                min: 100,
                number: true
            }
        },
        messages: {
            Identificacion: {
                required: "Por favor ingrese su identificación.",
                minlength: "Por favor ingrese mínimo 9 dígitos.",
                identificacion: "Ingrese una cedula o pasaporte válidos. (d-dddd-dddd)"
            },
            Nombre: {
                required: "Por favor ingrese su nombre."
            },
            Apellidos: {
                required: "Por favor ingrese su apellido."
            },
            FechaNacimiento: {
                required: "Por favor ingrese una fecha válida.",
                date: "Por favor ingrese una fecha válida.",
                edad: "Por favor ingrese una fecha válida."
            },
            Telefono: {
                required: "Por favor ingrese su teléfono.",
                rangelength: "Por favor ingrese un teléfono móvil."
            },
            SmsNotificationsMin: {
                required: "Por favor digite un valor válido.",
                minlength: "Por favor ingrese mínimo 3 dígitos.",
                
            }
        },

        errorElement: "div",
        errorPlacement: function (error, element) {
            error.addClass("invalid-feedback");
            error.insertAfter(element);

        },
        highlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-valid");
            $(element).addClass("is-invalid");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-invalid");
            $(element).addClass("is-valid");
        }
    });

    $.validator.addMethod("identificacion", function (value) {
        return /^[0-9]-[0-9]{4}-[0-9]{4}$/.test(value) // cedula
            || /^(?!^0+$)[a-zA-Z0-9]{3,20}$/.test(value) // pasaporte
    });

    $.validator.addMethod("edad", function (value) {
        var years = moment().diff(value, 'years', false);
        $("#txtEdad").val(years);
        return (years > 1) && (years < 100);
    });

    $("#frmContrasena").validate({
        rules: {
            Password: {
                required: true,
                pwcheck: true,
                minlength: 6
            },
            PasswordRep: {
                equalTo: "#txtPassword"
            }
        },
        messages: {
            Password: {
                required: "Por favor ingrese una contraseña.",
                minlength: "Por favor ingrese mínimo 6 caractéres.",
                pwcheck: "La contraseña debe ser alfanumérica."
            },
            PasswordRep: {
                equalTo: "Las contraseñas no coinciden."
            }
        },

        errorElement: "div",
        errorPlacement: function (error, element) {
            error.addClass("invalid-feedback");
            error.insertAfter(element);

        },
        highlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-valid");
            $(element).addClass("is-invalid");
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).removeClass("is-invalid");
            $(element).addClass("is-valid");
        }
    });

    $.validator.addMethod("pwcheck", function (value) {
        return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) // consists of only these
            && /[a-z]/.test(value) // has a lowercase letter
            && /\d/.test(value) // has a digit
    });
});