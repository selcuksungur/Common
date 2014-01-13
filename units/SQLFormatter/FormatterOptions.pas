unit FormatterOptions;

interface

procedure ReadFormatOptions(IniFileName: string);

implementation

uses
  LZBaseType, BCSQL.Consts, System.IniFiles;

procedure ReadFormatOptions(IniFileName: string);
begin
  with TIniFile.Create(IniFileName) do
  try
    { Select Column List }
    gFmtOpt.Select_ColumnList_Style := TAlignStyle(ReadInteger(SQLFORMATTER, SELECTCOLUMNLISTSTYLE, 0));
    gFmtOpt.Select_ColumnList_Comma := TLinefeedsCommaOption(ReadInteger(SQLFORMATTER, SELECTCOLUMNLISTLINEBREAK, 0));
    gFmtOpt.SelectItemInNewLine := ReadBool(SQLFORMATTER, SELECTCOLUMNLISTCOLUMNINNEWLINE, False);
    gFmtOpt.AlignAliasInSelectList := ReadBool(SQLFORMATTER, SELECTCOLUMNLISTALIGNALIAS, True);
    gFmtOpt.TreatDistinctAsVirtualColumn := ReadBool(SQLFORMATTER, SELECTCOLUMNLISTTREATDISTINCTASVIRTUALCOLUMN, False);
    { SubQuery }
    gFmtOpt.Subquery_NewLine_After_IN := ReadBool(SQLFORMATTER, SELECTSUBQUERYNEWLINEAFTERIN, False);
    gFmtOpt.Subquery_NewLine_After_EXISTS := ReadBool(SQLFORMATTER, SELECTSUBQUERYNEWLINEAFTEREXISTS, False);
    gFmtOpt.Subquery_NewLine_After_ComparisonOperator := ReadBool(SQLFORMATTER, SELECTSUBQUERYNEWLINEAFTERCOMPARISONOPERATOR, False);
    gFmtOpt.Subquery_NewLine_Before_ComparisonOperator := ReadBool(SQLFORMATTER, SELECTSUBQUERYNEWLINEBEFORECOMPARISONOPERATOR, False);
    { Into Clause }
    gFmtOpt.IntoClauseInNewline := ReadBool(SQLFORMATTER, SELECTINTOCLAUSEINNEWLINE, False);
    { Select From/Join Clause }
    gFmtOpt.Select_fromclause_Style := TAlignStyle(ReadInteger(SQLFORMATTER, SELECTFROMCLAUSESTYLE, 0));
    gFmtOpt.Select_FromclauseInNewLine := ReadBool(SQLFORMATTER, SELECTFROMCLAUSEINNEWLINE, False);
    gFmtOpt.Select_FromclauseJoinOnInNewline := ReadBool(SQLFORMATTER, SELECTJOINCLAUSEINNEWLINE, True);
    gFmtOpt.AlignJoinWithFromKeyword := ReadBool(SQLFORMATTER, SELECTALIGNJOINWITHFROMKEYWORD, False);
    gFmtOpt.AlignAndOrWithOnInJoinClause := ReadBool(SQLFORMATTER, SELECTALIGNANDORWITHONINJOINCLAUSE, False);
    gFmtOpt.AlignAliasInFromClause := ReadBool(SQLFORMATTER, SELECTALIGNALIASINFROMCLAUSE, False);
    { Select And/Or Clause }
    gFmtOpt.LinefeedsAndOr_option := TLineFeedsAndOrOption(ReadInteger(SQLFORMATTER, SELECTANDORLINEBREAK, 0));
    gFmtOpt.AndOrUnderWhere := ReadBool(SQLFORMATTER, SELECTANDORUNDERWHERE, False);
    gFmtOpt.WhereClauseInNewline := ReadBool(SQLFORMATTER, SELECTWHERECLAUSEINNEWLINE, False);
    gFmtOpt.WhereClauseAlignExpr := ReadBool(SQLFORMATTER, SELECTWHERECLAUSEALIGNEXPR, False);
    { Select Group By Clause }
    gFmtOpt.Select_Groupby_Style := TAlignStyle(ReadInteger(SQLFORMATTER, SELECTGROUPBYCLAUSESTYLE, 0));
    gFmtOpt.GroupByClauseInNewline := ReadBool(SQLFORMATTER, SELECTGROUPBYCLAUSEINNEWLINE, False);
    { Having Clause }
    gFmtOpt.HavingClauseInNewline := ReadBool(SQLFORMATTER, SELECTHAVINGCLAUSEINNEWLINE, False);
    { Select Order By Clause }
    gFmtOpt.Select_Orderby_Style := TAlignStyle(ReadInteger(SQLFORMATTER, SELECTORDERBYCLAUSESTYLE, 0));
    gFmtOpt.OrderByClauseInNewline :=  ReadBool(SQLFORMATTER, SELECTORDERBYCLAUSEINNEWLINE, False);
    { Insert }
    gFmtOpt.Insert_Columnlist_Style := TAlignStyle(ReadInteger(SQLFORMATTER, INSERTCOLUMNLISTSTYLE, 0));
    gFmtOpt.Insert_Valuelist_Style := TAlignStyle(ReadInteger(SQLFORMATTER, INSERTVALUELISTSTYLE, 0));
    gFmtOpt.Insert_Parenthesis_in_separate_line := ReadBool(SQLFORMATTER, INSERTPARENTHESISINSEPARATELINE, False);
    gFmtOpt.Insert_Columns_Per_line := ReadInteger(SQLFORMATTER, INSERTCOLUMNSPERLINE, 0);
    { Update }
    gFmtOpt.Update_Columnlist_Style := TAlignStyle(ReadInteger(SQLFORMATTER, UPDATECOLUMNLISTSTYLE, 0));
    { Alignments }
    gFmtOpt.Select_keywords_alignOption := TAlignOption(ReadInteger(SQLFORMATTER, KEYWORDALIGN, 0));
    gfmtopt.TrueLeft := ReadBool(SQLFORMATTER, KEYWORDALIGNMENTLEFTJUSTIFY, False);
  finally
    Free;
  end;
end;

end.
