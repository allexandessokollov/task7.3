//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TLabel *Label2;
        TLabel *answer;
        TBitBtn *close;
        TListBox *ListBox1;
        TEdit *enterText;
        void __fastcall enterTextKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
private:

        void findAmount(String str);
        bool isOdd(int num);
        int charToInt(char chArr[]);	// User declarations

public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
