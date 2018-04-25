from django import forms


class BikeForm(forms.Form):
    images = forms.ImageField(label=u'Photos', widget=forms.FileInput(
        attrs={'multiple': 'multiple'}))
    pass
