namespace CodeFirstWindform
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.Btnsalary = new System.Windows.Forms.Button();
            this.btnclear = new System.Windows.Forms.Button();
            this.btnfindbyid = new System.Windows.Forms.Button();
            this.dgv = new System.Windows.Forms.DataGridView();
            this.btnupdate = new System.Windows.Forms.Button();
            this.Btndelete = new System.Windows.Forms.Button();
            this.Btninsert = new System.Windows.Forms.Button();
            this.textdeptid = new System.Windows.Forms.TextBox();
            this.textsalary = new System.Windows.Forms.TextBox();
            this.textename = new System.Windows.Forms.TextBox();
            this.textecode = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Ename = new System.Windows.Forms.Label();
            this.Ecode = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(590, 298);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 48;
            // 
            // Btnsalary
            // 
            this.Btnsalary.Location = new System.Drawing.Point(458, 295);
            this.Btnsalary.Name = "Btnsalary";
            this.Btnsalary.Size = new System.Drawing.Size(126, 23);
            this.Btnsalary.TabIndex = 47;
            this.Btnsalary.Text = "SUM OF SALARY";
            this.Btnsalary.UseVisualStyleBackColor = true;
            // 
            // btnclear
            // 
            this.btnclear.Location = new System.Drawing.Point(312, 129);
            this.btnclear.Name = "btnclear";
            this.btnclear.Size = new System.Drawing.Size(75, 23);
            this.btnclear.TabIndex = 46;
            this.btnclear.Text = "Clear";
            this.btnclear.UseVisualStyleBackColor = true;
            // 
            // btnfindbyid
            // 
            this.btnfindbyid.Location = new System.Drawing.Point(312, 70);
            this.btnfindbyid.Name = "btnfindbyid";
            this.btnfindbyid.Size = new System.Drawing.Size(75, 23);
            this.btnfindbyid.TabIndex = 45;
            this.btnfindbyid.Text = "FINDBYID";
            this.btnfindbyid.UseVisualStyleBackColor = true;
            // 
            // dgv
            // 
            this.dgv.BackgroundColor = System.Drawing.Color.OrangeRed;
            this.dgv.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv.GridColor = System.Drawing.Color.Orange;
            this.dgv.Location = new System.Drawing.Point(415, 70);
            this.dgv.Name = "dgv";
            this.dgv.Size = new System.Drawing.Size(456, 183);
            this.dgv.TabIndex = 44;
            // 
            // btnupdate
            // 
            this.btnupdate.BackColor = System.Drawing.Color.SaddleBrown;
            this.btnupdate.Location = new System.Drawing.Point(312, 296);
            this.btnupdate.Name = "btnupdate";
            this.btnupdate.Size = new System.Drawing.Size(75, 23);
            this.btnupdate.TabIndex = 43;
            this.btnupdate.Text = "UPDATE";
            this.btnupdate.UseVisualStyleBackColor = false;
            // 
            // Btndelete
            // 
            this.Btndelete.BackColor = System.Drawing.Color.LightCoral;
            this.Btndelete.Location = new System.Drawing.Point(184, 296);
            this.Btndelete.Name = "Btndelete";
            this.Btndelete.Size = new System.Drawing.Size(75, 23);
            this.Btndelete.TabIndex = 42;
            this.Btndelete.Text = "DELETE";
            this.Btndelete.UseVisualStyleBackColor = false;
            this.Btndelete.Click += new System.EventHandler(this.Btndelete_Click);
            // 
            // Btninsert
            // 
            this.Btninsert.BackColor = System.Drawing.Color.Red;
            this.Btninsert.Location = new System.Drawing.Point(46, 296);
            this.Btninsert.Name = "Btninsert";
            this.Btninsert.Size = new System.Drawing.Size(75, 23);
            this.Btninsert.TabIndex = 41;
            this.Btninsert.Text = "INSERT";
            this.Btninsert.UseVisualStyleBackColor = false;
            this.Btninsert.Click += new System.EventHandler(this.Btninsert_Click);
            // 
            // textdeptid
            // 
            this.textdeptid.BackColor = System.Drawing.Color.Magenta;
            this.textdeptid.Location = new System.Drawing.Point(149, 242);
            this.textdeptid.Name = "textdeptid";
            this.textdeptid.Size = new System.Drawing.Size(100, 20);
            this.textdeptid.TabIndex = 40;
            // 
            // textsalary
            // 
            this.textsalary.BackColor = System.Drawing.Color.Pink;
            this.textsalary.Location = new System.Drawing.Point(149, 186);
            this.textsalary.Name = "textsalary";
            this.textsalary.Size = new System.Drawing.Size(100, 20);
            this.textsalary.TabIndex = 39;
            // 
            // textename
            // 
            this.textename.BackColor = System.Drawing.Color.Chartreuse;
            this.textename.Location = new System.Drawing.Point(149, 129);
            this.textename.Name = "textename";
            this.textename.Size = new System.Drawing.Size(100, 20);
            this.textename.TabIndex = 38;
            // 
            // textecode
            // 
            this.textecode.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.textecode.ForeColor = System.Drawing.Color.SpringGreen;
            this.textecode.Location = new System.Drawing.Point(149, 73);
            this.textecode.Name = "textecode";
            this.textecode.Size = new System.Drawing.Size(100, 20);
            this.textecode.TabIndex = 37;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Pink;
            this.label4.Location = new System.Drawing.Point(74, 242);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 36;
            this.label4.Text = "Deptid";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Fuchsia;
            this.label3.Location = new System.Drawing.Point(76, 186);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(36, 13);
            this.label3.TabIndex = 35;
            this.label3.Text = "Salary";
            // 
            // Ename
            // 
            this.Ename.AutoSize = true;
            this.Ename.BackColor = System.Drawing.Color.DarkOrchid;
            this.Ename.Location = new System.Drawing.Point(72, 129);
            this.Ename.Name = "Ename";
            this.Ename.Size = new System.Drawing.Size(40, 13);
            this.Ename.TabIndex = 34;
            this.Ename.Text = "Ename";
            // 
            // Ecode
            // 
            this.Ecode.AutoSize = true;
            this.Ecode.BackColor = System.Drawing.Color.PaleGreen;
            this.Ecode.Location = new System.Drawing.Point(74, 74);
            this.Ecode.Name = "Ecode";
            this.Ecode.Size = new System.Drawing.Size(38, 13);
            this.Ecode.TabIndex = 33;
            this.Ecode.Text = "Ecode";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label1.ForeColor = System.Drawing.Color.LightCoral;
            this.label1.Location = new System.Drawing.Point(273, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 10);
            this.label1.TabIndex = 49;
            this.label1.Text = "CODE FIRST OPERATION";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(917, 389);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.Btnsalary);
            this.Controls.Add(this.btnclear);
            this.Controls.Add(this.btnfindbyid);
            this.Controls.Add(this.dgv);
            this.Controls.Add(this.btnupdate);
            this.Controls.Add(this.Btndelete);
            this.Controls.Add(this.Btninsert);
            this.Controls.Add(this.textdeptid);
            this.Controls.Add(this.textsalary);
            this.Controls.Add(this.textename);
            this.Controls.Add(this.textecode);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.Ename);
            this.Controls.Add(this.Ecode);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button Btnsalary;
        private System.Windows.Forms.Button btnclear;
        private System.Windows.Forms.Button btnfindbyid;
        private System.Windows.Forms.DataGridView dgv;
        private System.Windows.Forms.Button btnupdate;
        private System.Windows.Forms.Button Btndelete;
        private System.Windows.Forms.Button Btninsert;
        private System.Windows.Forms.TextBox textdeptid;
        private System.Windows.Forms.TextBox textsalary;
        private System.Windows.Forms.TextBox textename;
        private System.Windows.Forms.TextBox textecode;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label Ename;
        private System.Windows.Forms.Label Ecode;
        private System.Windows.Forms.Label label1;
    }
}

