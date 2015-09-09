object DM: TDM
  OldCreateOrder = False
  Height = 496
  Width = 552
  object FireTaskList: TFDConnection
    Params.Strings = (
      'Database=C:\tempprojects\tasks.s3db'
      'DriverID=SQLite')
    Left = 24
    Top = 4
  end
  object FDQueryDelete: TFDQuery
    Connection = FireTaskList
    SQL.Strings = (
      'delete from task where TaskName = (:TaskName)')
    Left = 160
    Top = 20
    ParamData = <
      item
        Name = 'TASKNAME'
        ParamType = ptInput
      end>
  end
  object FDTableTask: TFDTable
    Connection = FireTaskList
    UpdateOptions.UpdateTableName = 'Task'
    TableName = 'Task'
    Left = 24
    Top = 92
  end
  object FDQueryInsert: TFDQuery
    Connection = FireTaskList
    SQL.Strings = (
      'insert into task (TaskName) values (:TaskName)')
    Left = 152
    Top = 92
    ParamData = <
      item
        Name = 'TASKNAME'
        ParamType = ptInput
      end>
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 220
    Top = 173
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      AutoActivate = False
      Track = True
      FillDataSource = BindSourceDB1
      FillDisplayFieldName = 'TaskName'
      AutoFill = False
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTableTask
    ScopeMappings = <>
    Left = 216
    Top = 264
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 260
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 48
    Top = 316
  end
end
