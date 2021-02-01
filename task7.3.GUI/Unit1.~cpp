//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include <string.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::enterTextKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if(Key == 13)
    {
        ListBox1->Items->Add("Your string:");
        ListBox1->Items->Add(enterText->Text);
        ListBox1->Items->Add("counting...");

        String str;
        str =  enterText->Text;
        str += " ";

        findAmount(str);
    }        
}
//---------------------------------------------------------------------------


void TForm1::findAmount(String str)
{
    int arrSize = str.Length();
    const char *chArr = str.c_str();
    int counter = 1;
    int ans = 0;
    char currentChar;

    for(int i = 1; i < arrSize; i++)
    {
        currentChar = chArr[i];

        if(currentChar == chArr[i - 1])
        {
            counter++;
        }
        else
        {
            if(ans < counter)
            {
                ans = counter;
            }
            counter = 1;
        }

    }

    answer->Caption = ans;
}




