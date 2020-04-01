
package cliente;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para anonymous complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="MultiplicarResult" type="{http://www.w3.org/2001/XMLSchema}int"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "multiplicarResult"
})
@XmlRootElement(name = "MultiplicarResponse")
public class MultiplicarResponse {

    @XmlElement(name = "MultiplicarResult")
    protected int multiplicarResult;

    /**
     * Obtiene el valor de la propiedad multiplicarResult.
     * 
     */
    public int getMultiplicarResult() {
        return multiplicarResult;
    }

    /**
     * Define el valor de la propiedad multiplicarResult.
     * 
     */
    public void setMultiplicarResult(int value) {
        this.multiplicarResult = value;
    }

}
