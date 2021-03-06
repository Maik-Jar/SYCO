package Modelo;

import java.awt.Dialog;
import java.sql.Connection;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

public class Reportes {
    Conexion con = new Conexion();
    Connection conn = con.getConnection();
    
    public void Factura (ArrayList list) {
       
        JasperReport reporte = null;
        //String path = "C:\\Users\\BrianMaiquel\\Documents\\MEGA\\MEGAsync\\NetBeansProjects\\SYCO\\src\\Reportes\\FacturaMiguelinaLuciano.jasper";
        String path = "C:\\Reportes\\FacturaMiguelinaLuciano.jasper";
        
        try {
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, new JRBeanCollectionDataSource(list));

            JasperViewer view = new JasperViewer(jprint, false);
            view.setModalExclusionType(Dialog.ModalExclusionType.APPLICATION_EXCLUDE);
            view.setVisible(true);
            view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
            
        } catch (JRException ex) {
            JOptionPane.showMessageDialog(null, ex, "Reporte", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void Rep_facturacion (ArrayList list) {

        JasperReport reporte = null;
        //String path = "C:\\Users\\BrianMaiquel\\Documents\\MEGA\\MEGAsync\\NetBeansProjects\\SYCO\\src\\Reportes\\Rep_facturacionMiguelinaLuciano.jasper";
        String path = "C:\\Reportes\\Rep_facturacionMiguelinaLuciano.jasper";
        
        try {

            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, new JRBeanCollectionDataSource(list));
            
            JasperViewer view = new JasperViewer(jprint, false);
            view.setVisible(true);
            view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);

        } catch (JRException ex) {
            JOptionPane.showMessageDialog(null, ex, "Reporte", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void Cotizacion(ArrayList list) {
        
        JasperReport reporte = null;
        //String path = "C:\\Users\\BrianMaiquel\\Documents\\MEGA\\MEGAsync\\NetBeansProjects\\SYCO\\src\\Reportes\\CotizacionMiguelinaLuciano.jasper";
        String path = "C:\\Reportes\\CotizacionMiguelinaLuciano.jasper";
        
        try {
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            JasperPrint jprint = JasperFillManager.fillReport(reporte, null, new JRBeanCollectionDataSource(list));
            
            JasperViewer view = new JasperViewer(jprint, false);
            view.setVisible(true);
            view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
            
        } catch (JRException ex) {
            JOptionPane.showMessageDialog(null, ex, "Reporte", JOptionPane.ERROR_MESSAGE);
        }
    }
}
