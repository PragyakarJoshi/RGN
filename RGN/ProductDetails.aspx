﻿<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="RGN.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />    
    <asp:FormView ID="productDetail" runat="server" ItemType="RGN.Models.Product" SelectMethod ="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProductName %></h1>
                <br />
            </div>
            <br />
            <table>
                <tr>
                    <td>    
                        <img src="/Catalog/Images/<%#:Item.ImagePath %>" style="height:300px" alt="<%#:Item.ProductName %>"/>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br /><%#:Item.Description %>
                        <br />
                        <br />
                        <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span>
                        <br />
                        <br />
                        <span><b>Product Number:</b>&nbsp;<%#:Item.ProductID %></span>
                        <br />
                        <br />
                        <br /><br /><br />
                        <br />
                        <br />
                        <br />
                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-primary" style="width:40%;">               
                            <span class="ProductListItem">
                                <b>Add To Cart<b>
                            </span>           
                        </a>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
