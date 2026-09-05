from django.http import JsonResponse
from django.shortcuts import render, redirect
from user.models import UserInfo

# Create your views here.
def login(request):
    if request.method == 'POST':
        try:
            username = request.POST.get('username')
            password = request.POST.get('password')
            try:
                user = UserInfo.objects.get(username=username)
            except UserInfo.DoesNotExist:
                return JsonResponse({'code':400, 'msg':'用户不存在'})
            if password != user.password:
                return JsonResponse({'code':400, 'msg':'用户名或密码错误'})
            request.session['uid'] = user.id
            request.session['uname'] = user.username
            request.session['avatar'] = user.avatar
            return JsonResponse({'code':200, 'msg':'登录成功'})
        except Exception as e:
            return JsonResponse({'code':500, 'msg':f'服务器错误{str(e)}'})
    else:
        return render(request, 'login.html')

def register(request):
    if request.method == 'POST':
        try:
            username = request.POST.get('username')
            email = request.POST.get('email')
            password = request.POST.get('password')
            print(username, password, email)
            if UserInfo.objects.filter(username=username).exists():
                return JsonResponse({'code':400, 'msg':'用户已存在'})
            if UserInfo.objects.filter(uemail=email).exists():
                return JsonResponse({'code':400, 'msg':'邮箱已存在'})
            UserInfo.objects.create(
                username=username,
                password=password,
                uemail=email,
                uaddress='',
                uyoubian='',
                uphone='',
                avatar='',
            )
            return JsonResponse({'code':200, 'msg':'注册成功'})
        except Exception as e:
            return JsonResponse({'code':500, 'msg':f'服务器错误{str(e)}'})
    else:
        return render(request, 'register.html')

def changeinfo(request):
    uid = request.session.get('uid')
    if request.method == 'POST':
        return None
    else:
        # GET请求，显示个人信息
        try:
            user = UserInfo.objects.get(id=uid)
            return render(request, 'changeInfo.html', {
                'user': user,
                'success': None,
                'error': None,
            })
        except UserInfo.DoesNotExist:
            return render(request, 'changeInfo.html', {
                'error': '用户不存在',
                'success': None,
            })

def logout(request):
    request.session.clear()
    return redirect('user:login')