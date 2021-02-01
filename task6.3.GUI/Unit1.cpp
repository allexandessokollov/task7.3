//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

const int maxMatrixSize = 8;/// it's actually 7x7
int const MAX_RANDOM_VALUE = 25;
int const MIN_RANDOM_VALUE = -25;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
    int cCount, rCount;
    cCount = StrToInt(nSize->Text) + 1;
    rCount = StrToInt(mSize->Text) + 1;

    matrix->ColCount = cCount;
    matrix->RowCount = rCount;

    matrix->Cells[0][0] = "matrix";

    for(int i = 1; i < cCount; i++)
    {
         AnsiString  strN = "n = ";
         strN += IntToStr(i);

         matrix->Cells[i][0] = strN;
    }

    for(int i = 1; i < rCount; i++)
    {
         AnsiString  strM = "m = ";
         strM += IntToStr(i);

         matrix->Cells[0][i] = strM;
    }
}
//---------------------------------------------------------------------------

bool TForm1::isStringGridFilled(int colCount, int rowCount)
{
    bool ret = true;

    for(int i = 1; i < colCount; i++)
    {
        for(int j = 1; j < rowCount; j++)
        {
            AnsiString str = matrix->Cells[i][j];
            if(str == "")
            {
                return false;
            }
        }
    }

    return ret;
}


void __fastcall TForm1::changeSizeClick(TObject *Sender)
{
    AnsiString nValue = nSize->Text;
    AnsiString mValue = mSize->Text;

    int cCount, rCount;
    cCount =  StrToInt(nValue) + 1;
    rCount =  StrToInt(mValue) + 1;


    if(nValue == "" || mValue == "")
    {
        matrix->ColCount = 0;
        matrix->RowCount = 0;
    }
    else if (cCount > maxMatrixSize || rCount > maxMatrixSize)
    {
        ShowMessage("maximum size is 7 x 7");
        nSize->Text = IntToStr(maxMatrixSize - 1);
        mSize->Text = IntToStr(maxMatrixSize - 1);

        cCount =  maxMatrixSize;
        rCount =  maxMatrixSize;

        matrix->ColCount = StrToInt(maxMatrixSize);
        matrix->RowCount = StrToInt(maxMatrixSize);
    }
    else
    {
        matrix->ColCount = cCount;
        matrix->RowCount = rCount;
    }

    for(int i = 1; i < cCount; i++)
    {
         AnsiString  strN = "n = ";
         strN += IntToStr(i);

         matrix->Cells[i][0] = strN;
    }

    for(int i = 1; i < rCount; i++)
    {
         AnsiString  strM = "m = ";
         strM += IntToStr(i);

         matrix->Cells[0][i] = strM;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::fillMatrixClick(TObject *Sender)
{
    int rCount, cCount;
    rCount = matrix->RowCount;
    cCount = matrix->ColCount;

    for(int i = 1; i < cCount; i++)
    {
        for(int j = 1; j < rCount; j++)
        {
            matrix->Cells[i][j] = random(MAX_RANDOM_VALUE - MIN_RANDOM_VALUE) + MIN_RANDOM_VALUE;
        }
    }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::getAnswerClick(TObject *Sender)
{
    int rCount, cCount, tmpArrSize;
    rCount = matrix->RowCount;
    cCount = matrix->ColCount;

    if (isStringGridFilled(cCount, rCount) == false)
    {
        ShowMessage("fill matrix");

        int rCount, cCount;
        rCount = matrix->RowCount;
        cCount = matrix->ColCount;

        for(int i = 1; i < cCount; i++)
        {
           for(int j = 1; j < rCount; j++)
            {
                matrix->Cells[i][j] = 0;
            }
        }
    }


    int **arr = new int*[cCount];
    for(int i = 0; i < cCount; i++)
    {
        arr[i] = new int[rCount];
    }

    const int HALF_OF_ARR =  cCount / 2;

    int *vector = new int[rCount];


    int dlsfh;
    for(int i = 1; i < rCount; i++)
    {
        for(int j = 1; j < cCount; j++)
        {
            dlsfh = StrToInt(matrix->Cells[j][i]);
            arr[j][i] = StrToInt(matrix->Cells[j][i]);

        }
    }


    int counter = 0;

    for(int i = 1; i < rCount; i++)
    {
        for(int j = 1; j <= HALF_OF_ARR ; j++)
        {
            if(arr[j][i] == arr[cCount - j][i])
            {
                counter++;
            }
        }
       
        if(counter == HALF_OF_ARR)
        {
            vector[i] = 1;
        }
        else
        {
            vector[i] = 0;
        }

        counter = 0;
    }

    for(int i = 0; i < cCount; i++)
    {
        delete []arr[i];
    }
    delete []arr;


    AnsiString answ = " ";

    for(int i = 1; i < rCount; i++)
    {
        answ += vector[i];
        answ += " ";
    }

    answer->Caption = answ;

}
//---------------------------------------------------------------------------



void __fastcall TForm1::fillZeroClick(TObject *Sender)
{
    int rCount, cCount, x = 1;
    rCount = matrix->RowCount;
    cCount = matrix->ColCount;

    for(int i = 1; i < rCount; i++)
    {
        for(int j = 1; j < cCount; j++)
        {
            matrix->Cells[j][i] = x;
        }
    }

}

//---------------------------------------------------------------------------




