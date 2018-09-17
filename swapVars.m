function swapVars(handles)

this = lower(handles.this.String);
that = lower(handles.that.String);

message = handles.OutPut.String;

if length(this) == 1 && length(that) == 1
    for i = 1:length(message)
        DoNext = true;
        if strcmp(message(i),this)
            message(i) = that;
            DoNext = false;
        elseif strcmp(message(i),that) && DoNext
            message(i) = this;
        end
    end
else
    handles.errorMessage.String = 'ERROR: Please enter one letter per box.';
end

handles.OutPut.String = message;
    
end