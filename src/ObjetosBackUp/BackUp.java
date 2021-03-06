/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ObjetosBackUp;

import Configuracion.Propiedades;
import interfaces.Transaccionable;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import objetos.Conecciones;

/**
 *
 * @author mauro
 */
public class BackUp implements Backapear{
    private String sql;
    private Transaccionable tra;
    private String archivo;
    private String nombreBase;

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }

    public String getNombreBase() {
        return nombreBase;
    }

    public void setNombreBase(String nombreBase) {
        this.nombreBase = nombreBase;
    }
    
    
    @Override
    public Boolean GenerarArchivosBarrios() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/barrios.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
        
    }

    @Override
    public Boolean GenerarArchivosCac() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/cac.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosCiudades() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/ciudades.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosClientes() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/clientes.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosDepartamentos() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/departamentos.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosEdificios() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/edificios.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosEquivalencias() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/equivalencias.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosInmobiliarias() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/inmobiliarias.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosMonedas() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/monedas.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosMovimientoDetallePlanes() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/movimientoDetalle.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosMovimientoPlanes() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/movimientoPlanes.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosPlanes() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/planes.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosTipos() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/tipos.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosUsuarios() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/usuarios.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public Boolean GenerarArchivosVistas() {
        tra=new Conecciones();
        sql="select * from barrios order by id";
        ResultSet rs=tra.leerConjuntoDeRegistros(sql);
        String rutaDestino = null;
        String sentencia="insert into barrios (id,descripcion,idCiudad,fecha) values ";
        FileWriter fichero=null;
        PrintWriter pw=null;
        try {
            while(rs.next()){
               
                    sentencia+="("+rs.getInt("id")+",'"+rs.getString("descripcion")+"',"+rs.getInt("idCiudad")+",'"+rs.getDate("fecha")+"'),";
               
                    
                //System.out.println(sentencia);
            }
            rutaDestino="Configuracion/vistas.txt";
            Integer cant=sentencia.length();
            cant=cant -1;
            sentencia=sentencia.substring(0,cant);
            System.out.println(sentencia);
            
            fichero=new FileWriter(rutaDestino);
            pw=new PrintWriter(fichero);
            pw.println(sentencia);
            
        } catch (SQLException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try {
                fichero.close();
                return true;
            } catch (IOException ex) {
                Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
                return false;
            }
            
        }
        
    }

    @Override
    public String GenerarArchivos() {
       String path="Configuracion/bbgestionmotos.sql";
        String archivoDestino="Configuracion/bbgestionmotos.sql";
        String nombreASubir=Propiedades.getID()+"_bbgestionmotos.sql";
        String dumpCommand = "C:/xampp/mysql/bin/mysqldump bbgestionmotos -h localhost -u "+Propiedades.getUSUARIO()+" -p"+Propiedades.getCLAVE();
        Runtime rt = Runtime.getRuntime();
        File test=new File(path);
        PrintStream ps;

        try{
        Process child = rt.exec(dumpCommand);
        ps=new PrintStream(test);
        InputStream in = child.getInputStream();
        int ch;
        while ((ch = in.read()) != -1) {
        ps.write(ch);
        System.out.write(ch);  //to view it by console
        }

        InputStream err = child.getErrorStream();
        while ((ch = err.read()) != -1) {
        System.out.write(ch);
        }
        }catch(Exception exc) {
        exc.printStackTrace();
        }
        
        
        return archivoDestino;
    }

    @Override
    public Boolean HacerBackUpGeneral() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean RecuperarBackUpGeneral() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean RecuperarArchivos(String archivo, String base) {
        Boolean veridi=false;
        try {
            String sentenciaas="c:/xampp/mysql/bin/mysql -u "+Propiedades.getUSUARIO()+" -p "+Propiedades.getCLAVE()+" "+Propiedades.getBD();
            System.out.println("SENTENCIA: "+sentenciaas);
            //Process p=Runtime.getRuntime().exec("c:/xampp/mysql/bin/mysql -u root -p  information_schema");
            Process p=Runtime.getRuntime().exec(sentenciaas);
            FileInputStream fis;
            try (OutputStream os = p.getOutputStream()) {
                fis = new FileInputStream(archivo);
                byte[] buffer=new byte[1000];
                int leido=fis.read(buffer);
                while(leido >0){
                    os.write(buffer,0,leido);
                    leido=fis.read(buffer);
                }   os.flush();
            }
            fis.close();
            veridi=true;
        } catch (IOException ex) {
            Logger.getLogger(BackUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        return veridi;
    }

    
}
