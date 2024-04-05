Public Class frm_games
    Private Sub NúmeroAleatórioToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NúmeroAleatórioToolStripMenuItem.Click
        Try
            Process.Start(Application.StartupPath & "\batch\aleatorio.bat\")
        Catch ex As Exception
            MsgBox("Erro ao carregar", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "ATENÇÃO")
        End Try
    End Sub

    Private Sub JokenSpockToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles JokenSpockToolStripMenuItem.Click
        Try
            Process.Start(Application.StartupPath & "\jokespock\jokespock.bat\")

        Catch ex As Exception
            MsgBox("Erro ao carregar", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "ATENÇÃO")
        End Try
    End Sub

    Private Sub MatematicaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MatematicaToolStripMenuItem.Click
        Try
            Process.Start(Application.StartupPath & "\batch\conta.bat\")
        Catch ex As Exception
            MsgBox("Erro ao carregar", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "ATENÇÃO")
        End Try
    End Sub

    Private Sub PROJETO01ToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub SoletrandoToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SoletrandoToolStripMenuItem.Click
        Try
            Process.Start(Application.StartupPath & "\vbs\day.vbs\")
        Catch ex As Exception
            MsgBox("Erro ao carregar", MsgBoxStyle.Critical + MsgBoxStyle.OkOnly, "ATENÇÃO")
        End Try
    End Sub

    Private Sub AdivinharNumerosToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AdivinharNumerosToolStripMenuItem.Click

    End Sub
End Class
