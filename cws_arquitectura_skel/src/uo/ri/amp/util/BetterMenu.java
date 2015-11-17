package uo.ri.amp.util;

import alb.util.console.Console;
import alb.util.console.Printer;
import alb.util.menu.Action;
import alb.util.menu.BaseMenu;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Jorge on 17/11/2015.
 */
public class BetterMenu extends BaseMenu {

    protected static final int EXIT = 0;

    protected Object[][] menuOptions;
    private List< Class<Action> > actions = null;

    @Override
    public void execute() {
        int opt;

        do {
            showMenu();
            opt = getMenuOption();
            try{
                processOption(opt);

            }catch(RuntimeException rte){
                Printer.printRuntimeException(rte);
                throw rte; // Quits the app

            }catch(Exception be){
                Printer.printBusinessException(be);
            }
        } while (opt != EXIT);
    }

    protected void processOption(int option) throws Exception {
        if (option == EXIT) return;
        Class<Action> actionClass = null;
        try {
            actionClass = actions.get(option - 1);
        } catch (IndexOutOfBoundsException aioob){
            System.out.print("Seleccione una opción válida.");
            return;
        }
        if (actionClass == null) return;

        createInstanceOf( actionClass ).execute();
    }

    protected int getMenuOption() {
        Integer opt;

        do {
            Console.print("Opcion: ");
            opt = Console.readInt();

        } while (opt == null || opt < EXIT);

        return opt;
    }

    protected void showMenu() {
        if (actions == null){
            fillActions();
        }

        int opc = 1;
        printMenuHeader();
        for(Object[] row : menuOptions) {
            String text = (String) row[0];
            if ( isOptionRow(row) ) {
                printMenuOption(opc++, text);
            }
            else {
                printMenuSeparator(text);
            }
        }
        printMenuFooter();
    }

    protected void printMenuSeparator(String text) {
        Console.println( text );
    }

    protected void printMenuOption(int opc, String text) {
        Console.println("\t " + opc + "- " + text);
    }

    protected void printMenuFooter() {
        Console.println();
        Console.println("\t 0- Salir");
    }

    protected void printMenuHeader() {
        Console.println();
    }

    private boolean isOptionRow(Object[] row) {
        return row[1] != null;
    }

    @SuppressWarnings("unchecked")
    private void fillActions() {
        actions = new ArrayList<Class<Action>>();

        for(Object[] row : menuOptions) {
            if (row[1] != null) {
                actions.add( (Class<Action>) row[1]);
            }
        }
    }

    private Action createInstanceOf(Class<Action> clazz) {
        try {

            return (Action) clazz.newInstance();

        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}
