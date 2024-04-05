<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frm_games
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Exigido pelo Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'OBSERVAÇÃO: o procedimento a seguir é exigido pelo Windows Form Designer
    'Pode ser modificado usando o Windows Form Designer.  
    'Não o modifique usando o editor de códigos.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frm_games))
        Me.MenuStrip1 = New System.Windows.Forms.MenuStrip()
        Me.PROJETOToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ALUNADayaneSoaresToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.DATA2024ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.TURMAFATECADSMA2ToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AplicativosDisponíveisToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.AdivinharNumerosToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.NúmeroAleatórioToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.JokenSpockToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MatematicaToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.JokeSpockToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.SoletrandoToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.MenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'MenuStrip1
        '
        Me.MenuStrip1.ImageScalingSize = New System.Drawing.Size(20, 20)
        Me.MenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.PROJETOToolStripMenuItem, Me.AplicativosDisponíveisToolStripMenuItem})
        Me.MenuStrip1.Location = New System.Drawing.Point(0, 0)
        Me.MenuStrip1.Name = "MenuStrip1"
        Me.MenuStrip1.Size = New System.Drawing.Size(800, 28)
        Me.MenuStrip1.TabIndex = 0
        Me.MenuStrip1.Text = "MenuStrip1"
        '
        'PROJETOToolStripMenuItem
        '
        Me.PROJETOToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.ALUNADayaneSoaresToolStripMenuItem, Me.DATA2024ToolStripMenuItem, Me.TURMAFATECADSMA2ToolStripMenuItem})
        Me.PROJETOToolStripMenuItem.Image = CType(resources.GetObject("PROJETOToolStripMenuItem.Image"), System.Drawing.Image)
        Me.PROJETOToolStripMenuItem.Name = "PROJETOToolStripMenuItem"
        Me.PROJETOToolStripMenuItem.Size = New System.Drawing.Size(102, 24)
        Me.PROJETOToolStripMenuItem.Text = "&PROJETO"
        '
        'ALUNADayaneSoaresToolStripMenuItem
        '
        Me.ALUNADayaneSoaresToolStripMenuItem.Name = "ALUNADayaneSoaresToolStripMenuItem"
        Me.ALUNADayaneSoaresToolStripMenuItem.Size = New System.Drawing.Size(253, 26)
        Me.ALUNADayaneSoaresToolStripMenuItem.Text = "ALUNA: Dayane Soares"
        '
        'DATA2024ToolStripMenuItem
        '
        Me.DATA2024ToolStripMenuItem.Name = "DATA2024ToolStripMenuItem"
        Me.DATA2024ToolStripMenuItem.Size = New System.Drawing.Size(253, 26)
        Me.DATA2024ToolStripMenuItem.Text = "DATA : 2024"
        '
        'TURMAFATECADSMA2ToolStripMenuItem
        '
        Me.TURMAFATECADSMA2ToolStripMenuItem.Name = "TURMAFATECADSMA2ToolStripMenuItem"
        Me.TURMAFATECADSMA2ToolStripMenuItem.Size = New System.Drawing.Size(253, 26)
        Me.TURMAFATECADSMA2ToolStripMenuItem.Text = "TURMA: FATEC ADSMA2"
        '
        'AplicativosDisponíveisToolStripMenuItem
        '
        Me.AplicativosDisponíveisToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.AdivinharNumerosToolStripMenuItem, Me.JokeSpockToolStripMenuItem})
        Me.AplicativosDisponíveisToolStripMenuItem.Image = CType(resources.GetObject("AplicativosDisponíveisToolStripMenuItem.Image"), System.Drawing.Image)
        Me.AplicativosDisponíveisToolStripMenuItem.Name = "AplicativosDisponíveisToolStripMenuItem"
        Me.AplicativosDisponíveisToolStripMenuItem.Size = New System.Drawing.Size(197, 24)
        Me.AplicativosDisponíveisToolStripMenuItem.Text = "&Aplicativos disponíveis:"
        '
        'AdivinharNumerosToolStripMenuItem
        '
        Me.AdivinharNumerosToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.NúmeroAleatórioToolStripMenuItem, Me.JokenSpockToolStripMenuItem, Me.MatematicaToolStripMenuItem})
        Me.AdivinharNumerosToolStripMenuItem.Image = CType(resources.GetObject("AdivinharNumerosToolStripMenuItem.Image"), System.Drawing.Image)
        Me.AdivinharNumerosToolStripMenuItem.Name = "AdivinharNumerosToolStripMenuItem"
        Me.AdivinharNumerosToolStripMenuItem.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.B), System.Windows.Forms.Keys)
        Me.AdivinharNumerosToolStripMenuItem.Size = New System.Drawing.Size(241, 26)
        Me.AdivinharNumerosToolStripMenuItem.Text = "Jogos Batch"
        '
        'NúmeroAleatórioToolStripMenuItem
        '
        Me.NúmeroAleatórioToolStripMenuItem.Image = CType(resources.GetObject("NúmeroAleatórioToolStripMenuItem.Image"), System.Drawing.Image)
        Me.NúmeroAleatórioToolStripMenuItem.Name = "NúmeroAleatórioToolStripMenuItem"
        Me.NúmeroAleatórioToolStripMenuItem.Size = New System.Drawing.Size(224, 26)
        Me.NúmeroAleatórioToolStripMenuItem.Text = "Número Aleatório"
        '
        'JokenSpockToolStripMenuItem
        '
        Me.JokenSpockToolStripMenuItem.Image = CType(resources.GetObject("JokenSpockToolStripMenuItem.Image"), System.Drawing.Image)
        Me.JokenSpockToolStripMenuItem.Name = "JokenSpockToolStripMenuItem"
        Me.JokenSpockToolStripMenuItem.Size = New System.Drawing.Size(224, 26)
        Me.JokenSpockToolStripMenuItem.Text = "JokenSpock"
        '
        'MatematicaToolStripMenuItem
        '
        Me.MatematicaToolStripMenuItem.Image = CType(resources.GetObject("MatematicaToolStripMenuItem.Image"), System.Drawing.Image)
        Me.MatematicaToolStripMenuItem.Name = "MatematicaToolStripMenuItem"
        Me.MatematicaToolStripMenuItem.Size = New System.Drawing.Size(224, 26)
        Me.MatematicaToolStripMenuItem.Text = "Matematica"
        '
        'JokeSpockToolStripMenuItem
        '
        Me.JokeSpockToolStripMenuItem.DropDownItems.AddRange(New System.Windows.Forms.ToolStripItem() {Me.SoletrandoToolStripMenuItem})
        Me.JokeSpockToolStripMenuItem.Image = CType(resources.GetObject("JokeSpockToolStripMenuItem.Image"), System.Drawing.Image)
        Me.JokeSpockToolStripMenuItem.Name = "JokeSpockToolStripMenuItem"
        Me.JokeSpockToolStripMenuItem.ShortcutKeys = CType((System.Windows.Forms.Keys.Control Or System.Windows.Forms.Keys.V), System.Windows.Forms.Keys)
        Me.JokeSpockToolStripMenuItem.Size = New System.Drawing.Size(241, 26)
        Me.JokeSpockToolStripMenuItem.Text = "Jogos VBScript"
        '
        'SoletrandoToolStripMenuItem
        '
        Me.SoletrandoToolStripMenuItem.Image = CType(resources.GetObject("SoletrandoToolStripMenuItem.Image"), System.Drawing.Image)
        Me.SoletrandoToolStripMenuItem.Name = "SoletrandoToolStripMenuItem"
        Me.SoletrandoToolStripMenuItem.Size = New System.Drawing.Size(165, 26)
        Me.SoletrandoToolStripMenuItem.Text = "Soletrando"
        '
        'frm_games
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 16.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.MenuStrip1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MainMenuStrip = Me.MenuStrip1
        Me.Name = "frm_games"
        Me.Text = "GAMES HOME"
        Me.MenuStrip1.ResumeLayout(False)
        Me.MenuStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents MenuStrip1 As MenuStrip
    Friend WithEvents AplicativosDisponíveisToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents AdivinharNumerosToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents JokeSpockToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents NúmeroAleatórioToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents JokenSpockToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents MatematicaToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents SoletrandoToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents PROJETOToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents ALUNADayaneSoaresToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents DATA2024ToolStripMenuItem As ToolStripMenuItem
    Friend WithEvents TURMAFATECADSMA2ToolStripMenuItem As ToolStripMenuItem
End Class
