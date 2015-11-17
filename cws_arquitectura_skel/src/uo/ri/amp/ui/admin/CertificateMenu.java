package uo.ri.amp.ui.admin;

import uo.ri.amp.ui.admin.action.certificate.GenerateCertificatesAction;
import uo.ri.amp.util.BetterMenu;

public class CertificateMenu  extends BetterMenu {

    public CertificateMenu() {
        menuOptions = new Object[][] {
                { "Administrador > Gestión de certificados", null },
                { "Generar certificados", 	        GenerateCertificatesAction.class },
        };
    }

    public static void main(String[] args) {
        new MainMenu().execute();
    }

}