/**
 * 
 */

package com.asiainfo.veris.crm.order.pub.frame.bcf.set.FieldTypeSetXml;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Element;

import com.asiainfo.veris.crm.order.pub.frame.bcf.set.toolkit.XmlAttribute;
import com.asiainfo.veris.crm.order.pub.frame.bcf.set.toolkit.XmlObject;

/**
 * Copyright: Copyright (c) 2014 Asiainfo-Linkage
 * 
 * @ClassName: ListDataSource.java
 * @Description: 该类的功能描述
 * @version: v1.0.0
 * @author: chengxf2
 * @date: 2014-1-20 下午03:38:26 Modification History: Date Author Version Description
 *        ------------------------------------------------------------* 2014-1-20 chengxf2 v1.0.0 修改原因
 */
public class ListDataSource extends XmlObject
{

    private static final long serialVersionUID = 1L;

    public static String _tagName = "ListDataSource";

    @SuppressWarnings("unchecked")
    public static ListDataSource unmarshal(Element elem)
    {
        if (elem == null)
        {
            return null;
        }
        ListDataSource __objListDataSource = new ListDataSource();
        if (__objListDataSource != null)
        {
            __objListDataSource.isDynamic.setValue(elem.attributeValue("isDynamic"));
            __objListDataSource.nullID.setValue(elem.attributeValue("nullID"));
            __objListDataSource.type.setValue(elem.attributeValue("type"));
            __objListDataSource.AttrName.setValue(elem.attributeValue("AttrName"));
            __objListDataSource.isReferToDis.setValue(elem.attributeValue("isReferToDis"));
            __objListDataSource.LSName.setValue(elem.attributeValue("LSName"));
            __objListDataSource.hasNull.setValue(elem.attributeValue("hasNull"));
        }

        Iterator it = elem.elementIterator();
        while (it.hasNext())
        {
            Object __obj = it.next();
            if (__obj instanceof Element)
            {
                Element __e = (Element) __obj;
                String __name = __e.getName();
                if (__name.equals(ListParameter._tagName))
                {
                    ListParameter __objListParameter = ListParameter.unmarshal(__e);
                    __objListDataSource.addListParameter(__objListParameter);
                }
            }
        }
        return __objListDataSource;
    }

    public XmlAttribute isDynamic = new XmlAttribute("isDynamic", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute nullID = new XmlAttribute("nullID", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute type = new XmlAttribute("type", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute AttrName = new XmlAttribute("AttrName", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute isReferToDis = new XmlAttribute("isReferToDis", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute LSName = new XmlAttribute("LSName", "NMTOKEN", "IMPLIED", "");

    public XmlAttribute hasNull = new XmlAttribute("hasNull", "NMTOKEN", "IMPLIED", "");

    protected List<ListParameter> _objListParameter = new ArrayList<ListParameter>();

    public List<List<ListParameter>> _getChildren()
    {
        List<List<ListParameter>> children = new ArrayList<List<ListParameter>>();
        if ((this._objListParameter != null) && (this._objListParameter.size() > 0))
        {
            children.add(this._objListParameter);
        }
        return children;
    }

    public boolean addListParameter(Collection<ListParameter> coListParameter)
    {
        if (coListParameter == null)
        {
            return false;
        }
        Iterator<ListParameter> it = coListParameter.iterator();
        while (it.hasNext())
        {
            Object obj = it.next();
            if ((obj != null) && (obj instanceof XmlObject))
                ((XmlObject) obj)._setParent(this);
        }
        return this._objListParameter.addAll(coListParameter);
    }

    public boolean addListParameter(ListParameter obj)
    {
        if (obj == null)
        {
            return false;
        }
        obj._setParent(this);
        return this._objListParameter.add(obj);
    }

    public void clearListParameterList()
    {
        this._objListParameter.clear();
    }

    public String get_TagName()
    {
        return _tagName;
    }

    public String getAttrName()
    {
        return this.AttrName.getValue();
    }

    public String getHasNull()
    {
        return this.hasNull.getValue();
    }

    public String getIsDynamic()
    {
        return this.isDynamic.getValue();
    }

    public String getIsReferToDis()
    {
        return this.isReferToDis.getValue();
    }

    public ListParameter[] getListParameter()
    {
        return ((ListParameter[]) (ListParameter[]) this._objListParameter.toArray(new ListParameter[0]));
    }

    public ListParameter getListParameter(int index)
    {
        return ((ListParameter) this._objListParameter.get(index));
    }

    public int getListParameterCount()
    {
        return this._objListParameter.size();
    }

    public List<ListParameter> getListParameterList()
    {
        return Collections.unmodifiableList(this._objListParameter);
    }

    public String getLSName()
    {
        return this.LSName.getValue();
    }

    public String getNullID()
    {
        return this.nullID.getValue();
    }

    public String getType()
    {
        return this.type.getValue();
    }

    public boolean isNoListParameter()
    {
        return (this._objListParameter.size() == 0);
    }

    public Element marshal()
    {
        return null;
    }

    public ListParameter removeListParameter(int index)
    {
        return ((ListParameter) this._objListParameter.remove(index));
    }

    public boolean removeListParameter(ListParameter obj)
    {
        return this._objListParameter.remove(obj);
    }

    public void setAttrName(String value_)
    {
        this.AttrName.setValue(value_);
    }

    public void setHasNull(String value_)
    {
        this.hasNull.setValue(value_);
    }

    public void setIsDynamic(String value_)
    {
        this.isDynamic.setValue(value_);
    }

    public void setIsReferToDis(String value_)
    {
        this.isReferToDis.setValue(value_);
    }

    public void setListParameter(int index, ListParameter obj)
    {
        if (obj == null)
        {
            removeListParameter(index);
        }
        else
        {
            this._objListParameter.set(index, obj);
            obj._setParent(this);
        }
    }

    public void setListParameter(ListParameter[] objArray)
    {
        if ((objArray == null) || (objArray.length == 0))
        {
            this._objListParameter.clear();
        }
        else
        {
            this._objListParameter = new ArrayList<ListParameter>(Arrays.asList(objArray));
            for (int i = 0; i < objArray.length; ++i)
            {
                if (objArray[i] != null)
                    objArray[i]._setParent(this);
            }
        }
    }

    public void setLSName(String value_)
    {
        this.LSName.setValue(value_);
    }

    public void setNullID(String value_)
    {
        this.nullID.setValue(value_);
    }

    public void setType(String value_)
    {
        this.type.setValue(value_);
    }

}
