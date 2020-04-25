unit UTrieNode;

interface
uses Classes, ComCtrls;
type
	TIndex = 'a'..'z';

	TNode = class
  private
    ptrs : array[TIndex] of TNode;
    eow : boolean;
  public
      constructor Create;
		  procedure push(s: string);
      procedure GetWord(s: string; var res: integer);
      procedure print(treeView: TTreeView; parent:TTreeNode);
      destructor Destroy; override;
	end;

implementation

constructor TNode.Create;
var
	i: TIndex;
begin
	inherited;
	self.eow :=false;
	for i:=low(TIndex) to high(TIndex) do
			ptrs[i] := nil;
end;

procedure TNode.GetWord(s: string; var res: integer);
const
  MN=['b','c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];

var

  ch:TIndex;

begin
   if eow then
    begin
      if s[Length(s)] in MN then
        inc (res);

    end;

  for ch:=Low(TIndex) to High(TIndex) do
    if Ptrs[ch]<>nil then
      Ptrs[ch].GetWord(s+ch,res)
end;

procedure TNode.print(treeView: TTreeView; parent:TTreeNode);
var
  i:Char;
  newParent: TTreeNode;
begin
  for i:= Low(TIndex) to high(TIndex) do
      if ptrs[i]<>nil then
        begin
          newParent := treeView.Items.AddChild(parent, i);
          ptrs[i].print(treeView, newParent);
        end;
end;

procedure TNode.push(s: string);
begin
  if s = '' then
    eow := True
  else
    begin
      if ptrs[s[1]] = nil then
        ptrs[s[1]] := TNode.Create;
      ptrs[s[1]].push(Copy(s,2,Length(s)));
    end;
end;

destructor TNode.Destroy;
var
  i:TIndex;
begin
  for i:=Low(TIndex) to High(TIndex) do
      ptrs[i].Free;
  inherited;
end;
end.
