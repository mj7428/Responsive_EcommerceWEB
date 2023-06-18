﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                        <asp:Label ID="Label2" runat="server" class="col-md-2 container-label" Text="Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label1" runat="server" class="col-md-2 container-label" Text="Price"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label19" runat="server" class="col-md-2 container-label" Text="Sell Price"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSelPrice" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtSelPrice"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label3" runat="server" class="col-md-2 container-label" Text="Brand"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlBrands" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ddlBrands"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label4" runat="server"  class="col-md-2 container-label" Text="Category"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlCategory" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label5" runat="server" class="col-md-2 container-label" Text="Sub Category"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlSubCategory" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ddlSubCategory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

             <div class="form-group">
                        <asp:Label ID="Label18" runat="server" class="col-md-2 container-label" Text="Gender"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlGender" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="ddlGender"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label6" runat="server" class="col-md-2 container-label" Text="Size"></asp:Label>
                        <div class="col-md-3">
                            <asp:DropDownList ID="ddlSize" CssClass="form-control" runat="server"></asp:DropDownList>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label20" runat="server" class="col-md-2 container-label" Text="Quantity"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label7" runat="server" class="col-md-2 container-label" Text="Descriptions"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtDesc" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtDesc"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label8" runat="server" class="col-md-2 container-label" Text="Product Details"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtPDetails"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            

            <div class="form-group">
                        <asp:Label ID="Label9" runat="server" class="col-md-2 container-label" Text="Material and Care"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label10" runat="server" class="col-md-2 container-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label11" runat="server" class="col-md-2 container-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fuImg02"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label12" runat="server" class="col-md-2 container-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fuImg03"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label13" runat="server" class="col-md-2 container-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fuImg04"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label14" runat="server" class="col-md-2 container-label" Text="Upload Image"></asp:Label>
                        <div class="col-md-3">
                            <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" CssClass="text-danger" runat="server" ErrorMessage="This Field is Required!" ControlToValidate="fuImg05"></asp:RequiredFieldValidator>
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label15" runat="server" class="col-md-2 container-label" Text="Free Delivery"></asp:Label>
                        <div class="col-md-3">
                            <asp:CheckBox ID="cbFD" CssClass="form-control" runat="server" />
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label16" runat="server" class="col-md-2 container-label" Text="30 Days Return"></asp:Label>
                        <div class="col-md-3">
                            <asp:CheckBox ID="cb30Ret" CssClass="form-control" runat="server" />
                        </div>
                    </div>

            <div class="form-group">
                        <asp:Label ID="Label17" runat="server" class="col-md-2 container-label" Text="COD"></asp:Label>
                        <div class="col-md-3">
                            <asp:CheckBox ID="cbCOD" CssClass="form-control" runat="server" />
                        </div>
                    </div>

             <div class="form-group">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn btn-default" OnClick="btnAdd_Click" />
                        </div>
                 </div>

        </div>
    </div>

</asp:Content>

