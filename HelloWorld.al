report 50103 "Purchase Order Status Detail a"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PurchaseOrderStatAlternate.rdl';
    ApplicationArea = Basic, Suite;
    Caption = 'Purchase Order Status Detail alt';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        /*dataitem("G/L Account"; "G/L Account")
        {
            PrintOnlyIfDetail = true;

            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(TIME; Time)
            {
            }
            column(CompanyInformation_Name; CompanyInformation.Name)
            {
            }
            column(USERID; UserId)
            {
            }
            column(GLFilter; GLFilter)
            {
            }
            column(PurchLineFilter; PurchLineFilter)
            {
            }
            column(GL_TABLECAPTION__________GLFilter; "G/L Account".TableCaption + ': ' + GLFilter)
            {
            }
            column(Purchase_Line__TABLECAPTION__________PurchLineFilter; "Purchase Line".TableCaption + ': ' + PurchLineFilter)
            {
            }
            column(GL__No__; "No.")
            {
            }
            column(GL__Name__; Name)
            {
            }
            column(Purchase_Line___Outstanding_Amount_; "Purchase Line"."Outstanding Amount")
            {
            }

            column(Global_Dimension_1_Filter; "Global Dimension 1 Filter")
            {
            }
            column(Global_Dimension_2_Filter; "Global Dimension 2 Filter")
            {
            }

            column(Purchase_Order_StatusCaption; Purchase_Order_StatusCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Purchase_Line__Document_No__Caption; "Purchase Line".FieldCaption("Document No."))
            {
            }
            column(Purchase_Line__Buy_from_Vendor_No__Caption; "Purchase Line".FieldCaption("Buy-from Vendor No."))
            {
            }
            column(Purchase_Line__Expected_Receipt_Date_Caption; Purchase_Line__Expected_Receipt_Date_CaptionLbl)
            {
            }
            column(Purchase_Line_QuantityCaption; "Purchase Line".FieldCaption(Quantity))
            {
            }
            column(Purchase_Line__Outstanding_Quantity_Caption; "Purchase Line".FieldCaption("Outstanding Quantity"))
            {
            }
            column(Purchase_Line__Quantity_Received_Caption; "Purchase Line".FieldCaption("Quantity Received"))
            {
            }
            column(Purchase_Line__Direct_Unit_Cost_Caption; "Purchase Line".FieldCaption("Direct Unit Cost"))
            {
            }
            column(Purchase_Line__Line_Discount_Amount_Caption; "Purchase Line".FieldCaption("Line Discount Amount"))
            {
            }
            column(Purchase_Line__Inv__Discount_Amount_Caption; Purchase_Line__Inv__Discount_Amount_CaptionLbl)
            {
            }
            column(Purchase_Line__Outstanding_Amount_Caption; "Purchase Line".FieldCaption("Outstanding Amount"))
            {
            }
            column(Report_TotalCaption; Report_TotalCaptionLbl)
            {
            }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemLink = "No." = field("No.");
                //                DataItemLink = "No." = FIELD("No.");//, "Location Code" = FIELD("Location Filter");
                //  DataItemTableView = SORTING("Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Expected Receipt Date") WHERE(Type = CONST(Item), "Document Type" = CONST(Order), "Outstanding Quantity" = FILTER(<> 0));
                RequestFilterFields = "Expected Receipt Date";
                RequestFilterHeading = 'Purchase Order Line';
                DataItemTableView = WHERE("Document Type" = FILTER(Order));
                column(Purchase_Line__Document_No__; "Document No.")
                {
                }
                column(Purchase_Line__Buy_from_Vendor_No__; "Buy-from Vendor No.")
                {
                }
                //column(Purchase_Line__Buy_from_Vendor_Name__; Ven){}
                column(Purchase_Line__Expected_Receipt_Date_; "Expected Receipt Date")
                {
                }
                column(Purchase_Line_Quantity; Quantity)
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Outstanding_Quantity_; "Outstanding Quantity")
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Quantity_Received_; "Quantity Received")
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Direct_Unit_Cost_; "Direct Unit Cost")
                {
                }
                column(Purchase_Line__Line_Discount_Amount_; "Line Discount Amount")
                {
                }
                column(Purchase_Line__Inv__Discount_Amount_; "Inv. Discount Amount")
                {
                }
                column(Purchase_Line__Outstanding_Amount_; "Outstanding Amount")
                {
                }
                column(GL__No___Control33; "G/L Account"."No.")
                {
                }
                column(Purchase_Line__Outstanding_Quantity__Control34; "Outstanding Quantity")
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Quantity_Received__Control35; "Quantity Received")
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Outstanding_Amount__Control36; "Outstanding Amount")
                {
                }
                column(Purchase_Line_Quantity_Control4; Quantity)
                {
                    DecimalPlaces = 2 : 5;
                }
                column(Purchase_Line__Line_Discount_Amount__Control5; "Line Discount Amount")
                {
                }
                column(Purchase_Line__Inv__Discount_Amount__Control6; "Inv. Discount Amount")
                {
                }
                column(Purchase_Line_Document_Type; "Document Type")
                {
                }
                column(Purchase_Line_Line_No_; "Line No.")
                {
                }
                column(Purchase_Line_No_; "No.")
                {
                }
                column(Purchase_Line_Location_Code; "Location Code")
                {
                }
                column(Purchase_Line_Variant_Code; "Variant Code")
                {
                }
                column(Purchase_Line_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
                {
                }
                column(Purchase_Line_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
                {
                }
                column(GL_TotalCaption; GL_TotalCaptionLbl)
                {
                }
                dataitem(Vendor; Vendor)
                {
                    DataItemLink = "No." = FIELD("Buy-from Vendor No.");
                    column(Vendor__Name__; Name) { }
                }

                dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
                {
                    DataItemLink = "Order No." = field("Document No.");

                    //                    DataItemLink = "Order No." = field("No.");
                    column(Order_No_; "Order No.") { }
                    column(PPIs; "No.") { }


                    dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
                    {
                        DataItemLink = "Document No." = field("No.");

                        //                        DataItemLink = "Document No." = Field("No.");
                        column(No_; "No.") { }
                        column(Description; Description) { }
                        column(Quantity; Quantity) { }
                        column(Direct_Unit_Cost; "Direct Unit Cost") { }
                        column(Line_Amount; "Line Amount") { }
                    }
                }

                trigger OnPreDataItem()
                begin
                    PPIQ.Open();
                    while PPIQ.Read() 
                    do begin
                        PP
                    end;
                end;
                trigger OnAfterGetRecord()
                begin
                    PurchHeader.Get("Document Type", "Document No.");
                    if (Quantity <> "Outstanding Quantity") and (Quantity <> 0) then begin
                        "Line Discount Amount" := "Line Discount Amount" * "Outstanding Quantity" / Quantity;
                        "Inv. Discount Amount" := "Inv. Discount Amount" * "Outstanding Quantity" / Quantity;
                    end;
                    if PurchHeader."Currency Factor" <> 0 then begin
                        // "Direct Unit Cost" := ROUND("Direct Unit Cost" * PurchHeader."Currency Factor" / 100);
                        // "Outstanding Amount" := ROUND("Outstanding Amount" * PurchHeader."Currency Factor" / 100);
                        // "Line Discount Amount" := ROUND("Line Discount Amount" * PurchHeader."Currency Factor" / 100);
                        // "Inv. Discount Amount" := ROUND("Inv. Discount Amount" * PurchHeader."Currency Factor" / 100);
                        "Direct Unit Cost" := Round("Direct Unit Cost" / PurchHeader."Currency Factor");
                        "Outstanding Amount" := Round("Outstanding Amount" / PurchHeader."Currency Factor");
                        "Line Discount Amount" := Round("Line Discount Amount" / PurchHeader."Currency Factor");
                        "Inv. Discount Amount" := Round("Inv. Discount Amount" / PurchHeader."Currency Factor");
                    end else begin
                        "Line Discount Amount" := Round("Line Discount Amount");
                        "Inv. Discount Amount" := Round("Inv. Discount Amount");
                    end;
                end;


            }


        }*/

        dataitem(Integer; Integer)
        {
            column(Document_No; Document_No) { }
            column(Line_Discount_Amount; Line_Discount_Amount) { }
            column(Purchase_Invoice; "Purchase Invoice") { }
            column(GL_No; GL_No) { }
            column(GL_Name; GL_Name) { }
            column(Doc_Date; Doc_Date) { }
            column(Vend_No; Vend_No) { }
            column(Vend_Name; Vend_Name) { }
            column(Qty; Qty) { }
            column(Received_Qty; Received_Qty) { }
            column(Unit_Cost; Unit_Cost) { }
            column(Amount; Amount) { }
            column(OutstandingAmount; OutstandingAmount)
            trigger OnPreDataItem()
            begin
                PPIQ.Open();
            end; while PPIQ.Read() 
                    do begin
                        Document_No:=PPIQ.Order_No_;
                    end;
                end;
                trigger OnAfterGetRecord()
                begin
                    PurchHeader.Get("Document Type", "Document No.");
                    if (Quantity <> "Outstanding Quantity") and (Quantity <> 0) then begin
                        "Line Discount Amount" := "Line Discount Amount" * "Outstanding Quantity" / Quantity;
                        "Inv. Discount Amount" := "Inv. Discount Amount" * "Outstanding Quantity" / Quantity;
                    end;
                    if PurchHeader."Currency Factor" <> 0 then begin
                        // "Direct Unit Cost" := ROUND("Direct Unit Cost" * PurchHeader."Currency Factor" / 100);
                        // "Outstanding Amount" := ROUND("Outstanding Amount" * PurchHeader."Currency Factor" / 100);
                        // "Line Discount Amount" := ROUND("Line Discount Amount" * PurchHeader."Currency Factor" / 100);
                        // "Inv. Discount Amount" := ROUND("Inv. Discount Amount" * PurchHeader."Currency Factor" / 100);
                        "Direct Unit Cost" := Round("Direct Unit Cost" / PurchHeader."Currency Factor");
                        "Outstanding Amount" := Round("Outstanding Amount" / PurchHeader."Currency Factor");
                        "Line Discount Amount" := Round("Line Discount Amount" / PurchHeader."Currency Factor");
                        "Inv. Discount Amount" := Round("Inv. Discount Amount" / PurchHeader."Currency Factor");
                    end else begin
                        "Line Discount Amount" := Round("Line Discount Amount");
                        "Inv. Discount Amount" := Round("Inv. Discount Amount");
                    end;
                end;
        }
    }


    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        CompanyInformation.Get();
        GLFilter := "G/L Account".GetFilters;
        PurchLineFilter := "Purchase Line".GetFilters;
    end;

    var
    PPIQ: Query PPIQuery;
              CompanyInformation: Record "Company Information";
              PurchHeader: Record "Purchase Header";
              GLFilter: Text;
              PurchLineFilter: Text;
              Purchase_Order_StatusCaptionLbl: Label 'Purchase Order Status';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Purchase_Line__Expected_Receipt_Date_CaptionLbl: Label 'Expected Date';
        Purchase_Line__Inv__Discount_Amount_CaptionLbl: Label 'Inv. Discount Amount';
        Report_TotalCaptionLbl: Label 'Report Total';
        GL_TotalCaptionLbl: Label 'GL Total';
}

query 50103 PPIQuery
{

    QueryType = Normal;
    /*  APIPublisher = 'Local';
      APIGroup = 'app1';
      APIVersion = 'v1.0';
      Caption = 'PPIQuery', Locked = true;
      EntityName = 'PurchasePosted0';
      EntitySetName = 'PostedPurchase0';
  */
    elements
    {
        dataitem("G__L__Account"; "G/L Account")
        {
            column(GL__No__; "No.")
            {
            }
            column(GL__Name__; Name)
            {
            }


            dataitem(Purchase_Line; "Purchase Line")
            {
                DataItemLink = "No." = G__L__Account."No.";//, "Location Code" = FIELD("Location Filter");
                                                           //  DataItemTableView = SORTING("Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Expected Receipt Date") WHERE(Type = CONST(Item), "Document Type" = CONST(Order), "Outstanding Quantity" = FILTER(<> 0));
                DataItemTableFilter = "Document Type" = filter(Order);
                column(Purchase_Line__Document_No__; "Document No.")
                {
                }
                column(Purchase_Line__Buy_from_Vendor_No__; "Buy-from Vendor No.")
                {
                }
                //column(Purchase_Line__Buy_from_Vendor_Name__; Ven){}
                column(Purchase_Line__Expected_Receipt_Date_; "Expected Receipt Date")
                {
                }
                column(Purchase_Line_Quantity; Quantity)
                {

                }
                column(Purchase_Line__Outstanding_Quantity_; "Outstanding Quantity")
                {

                }
                column(Purchase_Line__Quantity_Received_; "Quantity Received")
                {

                }
                column(Purchase_Line__Direct_Unit_Cost_; "Direct Unit Cost")
                {
                }
                column(Purchase_Line__Line_Discount_Amount_; "Line Discount Amount")
                {
                }
                column(Purchase_Line__Inv__Discount_Amount_; "Inv. Discount Amount")
                {
                }
                column(Purchase_Line__Outstanding_Amount_; "Outstanding Amount")
                {
                }

                column(Purchase_Line__Outstanding_Quantity__Control34; "Outstanding Quantity")
                {

                }
                column(Purchase_Line__Quantity_Received__Control35; "Quantity Received")
                {

                }
                column(Purchase_Line__Outstanding_Amount__Control36; "Outstanding Amount")
                {
                }
                column(Purchase_Line_Quantity_Control4; Quantity)
                {

                }
                column(Purchase_Line__Line_Discount_Amount__Control5; "Line Discount Amount")
                {
                }
                column(Purchase_Line__Inv__Discount_Amount__Control6; "Inv. Discount Amount")
                {
                }
                column(Purchase_Line_Document_Type; "Document Type")
                {
                }
                column(Purchase_Line_Line_No_; "Line No.")
                {
                }
                column(Purchase_Line_No_; "No.")
                {
                }
                column(Purchase_Line_Location_Code; "Location Code")
                {
                }
                column(Purchase_Line_Variant_Code; "Variant Code")
                {
                }
                column(Purchase_Line_Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
                {
                }
                column(Purchase_Line_Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
                {
                }


                dataitem(Purch__Inv__Header__; "Purch. Inv. Header")
                {
                    DataItemLink = "Order No." = Purchase_Line."Document No.";
                    column(Order_No_; "Order No.") { }
                    column(PPIs; "No.") { }
                    dataitem(Purch__Inv__Line_; "Purch. Inv. Line")
                    {
                        DataItemLink = "Document No." = Purch__Inv__Header__."No.";
                        column(No_; "No.") { }
                        column(Description; Description) { }
                        column(Quantity; Quantity) { }
                        column(Direct_Unit_Cost; "Direct Unit Cost") { }
                        column(Line_Amount; "Line Amount") { }
                    }
                }
            }
        }
    }

    var
        CompanyInformation: Record "Company Information";
        PurchHeader: Record "Purchase Header";
        GLFilter: Text;
        PurchLineFilter: Text;
        Purchase_Order_StatusCaptionLbl: Label 'Purchase Order Status';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Purchase_Line__Expected_Receipt_Date_CaptionLbl: Label 'Expected Date';
        Purchase_Line__Inv__Discount_Amount_CaptionLbl: Label 'Inv. Discount Amount';
        Report_TotalCaptionLbl: Label 'Report Total';
        GL_TotalCaptionLbl: Label 'GL Total';

}
